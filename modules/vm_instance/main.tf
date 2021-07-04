provider "template" {
  version = "~>2.1.2"  #### provider version nor needed anymore with the latest terraform update    #####
}

provider "google" {
  version = "=3.23.0"
  project = var.project_id
  
}

provider "google-beta" {
  version = "=3.23.0"
  project = var.project_id
  region  = var.location
  zone    = var.zone
}






resource "google_compute_instance" "vm_instances" {
  
        name         = var.name
        #name         =  "vminstances"
        project      =  var.project_id
        machine_type =  var.machines_typ
        zone         =  var.zone
        #region       =  var.location

        boot_disk {
          initialize_params{
              image = var.src_img
              size =  var.disk_size_gb
              type =  var.disk_type

          }
        }

        tags = ["http-server"]

        network_interface {
          
          network = "default"       // This enables private ip address
          access_config {           //  This enables public ip address
            
          }
        }

        #metadata_startup_script = file("../../Googleproject/compute_instance/mem_vm.sh")                              //Note: specify the path to '"apache2.sh" file in  the system direcotry  from where you run the code;In case the github path dosent work

        

}
