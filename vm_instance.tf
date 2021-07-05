module "vm-instance-1" {
  source        = "./modules/vm_instance"
  name        =    var.vm_name
  project_id    =  var.project_id
  location        = var.location
  #iam_members = []
  zone          =  var.zone
  
}

