module "test-dataset-1" {
  source      = "./modules/bqs"
  dataset_id  = "ind_coe_dataset1"
  project_id  = ""
  dataset_location = "US"
  #iam_members = []
}
