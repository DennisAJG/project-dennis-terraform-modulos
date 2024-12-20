variable "iam_user_getrak_devops" {
  description = "Nome do usuário iam para devops"
  type        = string # insira o nome do user assim: name
}

variable "job_gretak" {
  description = "Nome da profissão o usuário é"
  type = string # insira o nome da profissão assim: devops, dev, qa
}

variable "nivel_job_gretak" {
  description = "Nível da profissão o usuário é"
  type = string # insira o nível da profissão assim: master, jr, pleno
}

variable "environment_name" {
  description = "Nome do ambiente que será usado pro projeto"
  type        = string # insira o valor dessa forma: dev, prod, qa
}

variable "policy_arn_access_admin_getrak_devops" {
  description = "ARN da politica de acesso total para o user iam para devops"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

