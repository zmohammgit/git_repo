#tag 
module "vm_instance1" {  
source = "./modules/vm_instance"
project_id = var.project_id
location = var.location
zone = var.zone 
machine_typ = "e2-standard-2(2 vCPU, 8 GB memory)" 
name = "vm_instance-716"
}

