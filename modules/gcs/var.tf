
variable "project_id" {
  

}

variable "location" {
  #default = "europe-west2"
}

variable "cmek_gcskey" {
  default = ""
}

variable "name" {

}

variable "environment" {
  default = ""
}



variable "storage_class" {
  type    = string
  default = "REGIONAL"
}

variable "iam_members" {
  type = list(object({
    role   = string
    member = string
  }))
  default = []
}
