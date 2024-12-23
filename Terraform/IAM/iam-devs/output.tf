
output "iam_group_getrak" {
  description = "Nome do grupo que será usado"
  value       = aws_iam_group.iam_group_getrak.name
}

output "iam_users" {
  description = "Lista de usuários IAM criados"
  value = { for user, details in aws_iam_user.iam_user_getrak_devs : user => details.name }
}

output "access_keys" {
  description = "Chaves de acesso criadas para cada usuário"
  value = { for user, key in aws_iam_access_key.iam_access_key_getrak : user => key.id }
  sensitive = true
}

output "secret_keys" {
  description = "Chaves secretas criadas para cada usuário"
  value = { for user, key in aws_iam_access_key.iam_access_key_getrak : user => key.secret }
  sensitive = true
}