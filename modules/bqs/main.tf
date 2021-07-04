provider "template" {
  version = "~>2.1.2"  #### provider version nor needed anymore with the latest terraform update    #####
}

provider "google" {
  version = "=3.23.0"
  project = var.project_id
  credentials = "service.json"
}

provider "google-beta" {
  version = "=3.23.0"
  project = var.project_id
  region  = var.location
  zone    = var.zone
}



resource "google_bigquery_dataset" "dataset"{
#name    = var.dataset_name
#for_each= toset(var.dataset_id)
#count   = 2
project = var.project_id
dataset_id = var.dataset_id
description = "This is the dataset"
location = var.dataset_location


}
