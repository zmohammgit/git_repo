module "vm-instance-1" {
  source        = "./modules/vm_instance"
  name        = "vminstance1"
  project_id    = "expanded-origin-316105"
  location        = "US-CENTRAL1"
  #iam_members = []
  zone          = "us-central1-c"
}

