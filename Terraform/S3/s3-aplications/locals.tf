locals {
  common_tags = {
    owner       = "dennis-devops-getrak"
    managed-by  = "terraform"
    project     = "getrak"
    service     = "s3"
    environment = "${var.environment_name}"
  }
}