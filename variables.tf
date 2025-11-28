variable "environment" {
  description = "Deployment environment (e.g., npd, prd)"
  type        = string
}

variable "location" {
  type    = string
  default = "canadacentral"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}
