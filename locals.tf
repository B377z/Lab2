locals {
  name_prefix = "${var.project_name}-${var.environment}"
  rg_name     = "${local.name_prefix}-rg"
}
