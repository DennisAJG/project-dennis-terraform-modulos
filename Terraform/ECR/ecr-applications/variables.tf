variable "ecr_name_application_getrak" {
  description = "Nome do repositorio exp: application-name-application" 
  type        = string # insira o nome do repositorio exp: application-name-application
}

variable "environment_name" {
  description = "Nome do ambiente que será usado pro projeto exp: dev,prod,aq"
  type        = string # insira o valor dessa forma: dev, prod, qa
}
