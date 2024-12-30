variable "selected_vpc" {
  type = string
}

locals {
  vpcs = {
    "devops" = {
      cidr_block = "10.0.0.0/16"
      name       = "devops-vpc-getrak"
    }
    "apps" = {
      cidr_block = "10.1.0.0/16"
      name       = "apps-vpc-getrak"
    }
  }
}