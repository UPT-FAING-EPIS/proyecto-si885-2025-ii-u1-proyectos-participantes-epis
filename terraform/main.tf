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

// Recurso: Instancia de Cloud SQL para MySQL (sin cambios)
resource "google_sql_database_instance" "mysql_instance" {
  name             = "mi-instancia-mysql-demo"
  database_version = "MYSQL_8_0"
  region           = var.gcp_region

  settings {
    tier = "db-n1-standard-1"
  }
  
  deletion_protection = false
}

// MODIFICADO: Este bloque ahora creará una base de datos por cada nombre en la variable "database_names".
resource "google_sql_database" "databases" {
  # for_each necesita un conjunto (set) de strings, así que convertimos la lista.
  for_each = toset(var.database_names)

  instance = google_sql_database_instance.mysql_instance.name
  
  # "each.key" contendrá el nombre de la base de datos en cada iteración.
  name     = each.key
}

// MODIFICADO: El usuario ahora toma su nombre de una variable.
resource "google_sql_user" "db_user" {
  instance = google_sql_database_instance.mysql_instance.name
  name     = var.db_user_name
  password = var.db_password
}