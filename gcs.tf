#tag 
module "gcs_bucket1" {  
source = "./modules/gcs" 
name = "secops-316111-bucket-708" 
project_id = "secops-316111" 
location = "us (multiple regions in United States)"
}

