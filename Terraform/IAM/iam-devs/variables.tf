variable "iam_user_getrak_devs" {
  description = "Nome do usuário iam para devs"
  type        = string # insira o nome do user assim: name
}

variable "job_gretak" {
  description = "Nome da profissão o usuário é"
  type        = string # insira o nome da profissão assim: devops, dev, qa
}

variable "nivel_job_gretak" {
  description = "Nível da profissão o usuário é"
  type        = string # insira o nível da profissão assim: master, jr, pleno
}

variable "policy_arn_access_admin_getrak_devs" {
  description = "ARN da politica de acesso total para o user iam para devs"
  type        = string # valide no arquivo policys quais são as arns para esse usuario
}

