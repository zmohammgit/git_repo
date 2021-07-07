#tag 
module "service_account1" {  
source = "./modules/service_account"
project_roles = ["expanded-origin-316105=>roles/viewer"]
display_name  = var.display_name
account_id    = var.account_id 
project_id = "secops-316111"
}

#tag 
module "service_account1" {  
source = "./modules/service_account"
project_roles = ["expanded-origin-316105=>roles/viewer"]
display_name  = var.display_name
account_id    = var.account_id 
project_id = "secops-316111"
}

#tag 
module "vm_instance2" {  
source = "./modules/vm_instance"
project_id = var.project_id
location = var.location
zone = var.zone 
machine_typ = "e2-medium(2 vCPU, 4 GB memory)" 
name = "vm_instance-875"
}

