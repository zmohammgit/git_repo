module "service_accounts" {
  source        = "./modules/service_account"
  project_id    = var.project_id
  project_roles = ["expanded-origin-316105=>roles/viewer"]
  display_name  = var.display_name
  account_id    = var.account_id
  #member        =  ""
  
}



