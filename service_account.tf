module "service_accounts" {
  source        = "./modules/service_account"
  project_id    = ""
  project_roles = ["(enter_project_id)=>roles/viewer"]
  display_name  = "Serviceaccount"
  account_id    = "google-service-account"
  #member        =  ""
  
}

