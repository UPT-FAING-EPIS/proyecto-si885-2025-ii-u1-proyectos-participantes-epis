// Contenido de variables.tf

variable "gcp_project_id" {
  description = "El ID del proyecto de Google Cloud."
  type        = string
}

variable "gcp_region" {
  description = "La región donde se crearán los recursos."
  type        = string
  default     = "us-central1"
}

// NUEVA VARIABLE: Una lista con los nombres de todas las bases de datos que quieres crear.
variable "database_names" {
  description = "Una lista de nombres para las bases de datos a crear."
  type        = list(string)
  default     = [] // Por defecto, una lista vacía.
}

// NUEVA VARIABLE: El nombre de usuario para la base de datos.
variable "db_user_name" {
  description = "El nombre de usuario para la base de datos."
  type        = string
}

variable "db_password" {
  description = "La contraseña para el usuario de la base de datos."
  type        = string
  sensitive   = true
}