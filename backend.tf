
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
  region  = var.location
  #zone    = var.zone
}

terraform {
 # required_version = "=1.0.0"
  backend "gcs" {
    bucket = "buckey-2611"
    prefix = "terraform/statefile"
    
   
   
    
  }
}
