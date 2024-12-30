resource "aws_vpc" "vpc_project_getrak" {
  for_each = local.vpcs

  cidr_block           = each.value.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name       = each.value.name
    managed-by = "terraform"
    owner      = "dennis-devops-getrak"
    project    = "getrak"
    service    = "iam"
  }
}