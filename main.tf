resource "cloudflare_pages_project" "pages_projects" {
  for_each = var.pages_projects

  account_id         = each.value.account_id
  name               = each.value.name
  production_branch  = each.value.production_branch
  build_config       = each.value.build_config
  deployment_configs = each.value.deployment_configs
  source             = each.value.source
}

