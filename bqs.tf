
module "test-dataset-1" {
  source      = "./modules/bqs"
  dataset_id  =  var.dataset_id
  project_id  =  var.project_id
  dataset_location = var.dataset_location
  #iam_members = []
}

