


resource "google_service_account" "account" {
  display_name = var.display_name
  project      = var.project_id
  account_id   = var.account_id
}




