variable "iam_user_getrak_devops" {
  description = "Nome do usuário iam para devops"
  type = string # insira o nome do user assim: name-devops-nível-getrak
}

variable "policy_arn_access_admin_getrak_devops" {
    description = "ARN da politica de acesso total para o user iam para devops"
    type = string
    default = "arn:aws:iam::aws:policy/AdministratorAccess"
}

