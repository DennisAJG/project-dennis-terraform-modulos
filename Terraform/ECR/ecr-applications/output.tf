output "ecr_repository_url_applications_getrak" {
  description = "URL do repositório ECR"
  value       = aws_ecr_repository.ecr_repo_applications_getrak.repository_url
}