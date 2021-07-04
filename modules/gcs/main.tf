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



resource "google_storage_bucket" "bucket" {
  name                        = var.name
  location                    = var.location
  project                     = var.project_id
  storage_class               = var.storage_class
  #uniform_bucket_level_access = var.uniform_bucket_level_access

  versioning {
    enabled = "true"
  }

  /*encryption {
    default_kms_key_name =var.cmek_gcskey
  }*/

  labels = {
    terraformed = "true"
    project     = var.project_id
  }
}

resource "google_storage_bucket_iam_member" "members" {
  for_each = {
    for m in var.iam_members : "${m.role} ${m.member}" => m
  }
  bucket = google_storage_bucket.bucket.name
  role   = each.value.role
  member = each.value.member
}
