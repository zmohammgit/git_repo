module "service_accounts" {
  source        = "./modules/service_account"
  project_id    = "expanded-origin-316105"
  project_roles = ["expanded-origin-316105=>roles/viewer"]
  display_name  = "Serviceaccount"
  account_id    = "google-service-account"
  #member        =  ""
  
}

