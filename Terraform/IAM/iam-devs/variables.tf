variable "iam_user_getrak_devs" {
  description = "Lista de usuários com profissão e nível"
  type = map(object({
    job   = string
    nivel = string
  }))
}
