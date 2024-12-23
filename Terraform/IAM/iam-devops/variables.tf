variable "iam_user_getrak_devops" {
  description = "Lista de usuários com profissão e nível"
  type = map(object({
    job   = string
    nivel = string
  }))
}

