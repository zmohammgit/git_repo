

resource "google_bigquery_dataset" "dataset"{
#name    = var.dataset_name
#for_each= toset(var.dataset_id)
#count   = 2
project = var.project_id
dataset_id = var.dataset_id
description = "This is the dataset"
location = var.dataset_location


}
