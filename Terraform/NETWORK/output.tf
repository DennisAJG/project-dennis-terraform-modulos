output "vpc_id_getrak" {
  value = { for key, vpc in aws_vpc.vpc_project_getrak : key => vpc.id }
}
