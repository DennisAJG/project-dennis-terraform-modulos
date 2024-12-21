locals {
  common_tags = {
    owner       = "dennis-devops-getrak"
    managed-by  = "terraform"
    project     = "getrak"
    service     = "ecr"
    environment = "${var.environment_name}"
  }
}