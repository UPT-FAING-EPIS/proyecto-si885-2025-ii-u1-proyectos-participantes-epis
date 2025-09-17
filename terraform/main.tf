// Contenido de main.tf

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

// Recurso: Instancia de Cloud SQL para MySQL
resource "google_sql_database_instance" "mysql_instance" {
  name             = "mi-instancia-mysql-demo"
  database_version = "MYSQL_8_0"
  region           = var.gcp_region

  settings {
    tier = "db-f1-micro"
    
    # --- CONFIGURACIÓN DE AHORRO MÁXIMO ---
    # La política 'NEVER' le dice a la instancia que se detenga
    # tras unos minutos de inactividad. Solo se activará (y facturará)
    # cuando reciba una conexión.
    activation_policy = "NEVER"
  }
  
  deletion_protection = false
}

// Bloque para crear bases de datos dinámicamente
resource "google_sql_database" "databases" {
  for_each = toset(var.database_names)
  instance = google_sql_database_instance.mysql_instance.name
  name     = each.key
}

// Bloque para crear el usuario de la base de datos
resource "google_sql_user" "db_user" {
  instance = google_sql_database_instance.mysql_instance.name
  name     = var.db_user_name
  password = var.db_password
}