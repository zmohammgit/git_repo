module "test-bucket-1" {
  source      = "./modules/gcs"
  name        = var.bucket_name
  project_id  = var.project_id
  location    = var.location
  #iam_members = []
}
