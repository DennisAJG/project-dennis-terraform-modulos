resource "aws_ecr_repository" "ecr_repo_applications_getrak" {
  name = "${var.ecr_name_application_getrak}-ecr-getrak-${var.environment_name}"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = merge(
    local.common_tags,
    {
      Name = "${var.ecr_name_application_getrak}-ecr-applications-getrak-${var.environment_name}"
    }
  )
}