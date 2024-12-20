variable "name_bucket_getrak_tfstate" {
  description = "Nome da bucket que será criado para armazenar as tfstate"
  type = string # insira o valor dessa forma: getraktfstate
}

variable "environment_name" {
  description = "Nome do ambiente que será usado pro projeto"
  type = string # insira o valor dessa forma: dev, prod, qa
}