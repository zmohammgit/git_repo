provider "template" {
  version = "~>2.1.2"  #### provider version nor needed anymore with the latest terraform update    #####
}

provider "google" {
  version = "=3.23.0"
  project = var.project_id
 
}

provider "google-beta" {
  version = "=3.23.0"
  project = var.project_id
  #region  = var.location
  #zone    = var.zone
}


resource "google_service_account" "account" {
  display_name = var.display_name
  project      = var.project_id
  account_id   = var.account_id
}




