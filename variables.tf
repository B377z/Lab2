variable "environment" {
  type        = string
  description = "Deployment environment"

  validation {
    condition = contains(
      [
        "dev", "tst",
        "npd", "nonprod", "non-prod", "nonproduction",
        "prd", "prod", "production"
      ],
      lower(trimspace(var.environment))
    )
    error_message = "Environment must be one of: dev, tst, npd, nonprod, non-prod, nonproduction, prd, prod, production."
  }
  validation {
    condition     = length(trimspace(var.environment)) > 0
    error_message = "Environment cannot be empty."
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
