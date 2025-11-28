locals {
  env_suffix        = var.environment == "prd" ? "prd" : var.environment
  safe_project_name = replace(lower(var.project_name), " ", "")
  name_prefix       = lower("${local.safe_project_name}-${local.env_suffix}")
  rg_name           = "${local.name_prefix}-rg"
}
