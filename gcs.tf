
module "test-bucket-1" {
  source      = "./modules/gcs"
  name        = "indcoe_bucket_11"
  project_id  = "expanded-origin-316105"
  location    = "US-CENTRAL1"
  #iam_members = []
}

