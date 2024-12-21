output "access_key" {
  description = "Access key do usuário criado"
  value       = aws_iam_access_key.iam_access_key_getrak.id
  sensitive   = true # Impede a exibição direta da chave no Terraform Plan
}

output "secret_key" {
  description = "Secret key do usuário criado"
  value       = aws_iam_access_key.iam_access_key_getrak.secret
  sensitive   = true # Impede a exibição direta da chave no Terraform Plan
}

output "iam_user_getrak_devs" {
  description = "Nome do usuário iam para devops"
  value       = aws_iam_user.iam_user_getrak_devs.name
}

output "iam_group_getrak" {
  description = "Nome do grupo que será usado"
  value       = aws_iam_group.iam_group_getrak.name
}