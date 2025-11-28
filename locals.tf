locals {
  env_raw             = try(trimspace(lower(var.environment)), "")
  prd_aliases         = ["prd", "prod", "production"]
  npd_aliases         = ["npd", "nonprod", "non-prod", "nonproduction"]
  env_standard_suffix = contains(local.prd_aliases, local.env_raw) ? "prd" : (contains(local.npd_aliases, local.env_raw) ? "npd" : local.env_raw)
  safe_project_name   = replace(lower(var.project_name), " ", "")
  name_prefix         = lower("${local.safe_project_name}-${local.env_standard_suffix}")
  rg_name             = "${local.name_prefix}-rg"
}
