variable "environment" {
  description = "Deployment environment (e.g., npd, prd)"
  type        = string

  validation {
    condition     = contains(["dev", "tst", "prd", "npd"], var.environment)
    error_message = "value must be one of: dev, tst, prd, npd"
  }
}

variable "location" {
  type    = string
  default = "canadacentral"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}
