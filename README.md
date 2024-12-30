# project-dennis-terraform-modulos
Projeto de um Infraestrutura completa em Terraform, ansible e vault usando modulos-terraform

## Nome da Empresa: Getrak

## Objetivo do projeto 

Provisionar toda uma infraestrutura AWS com o terraform modulos, onde terá duas redes (devops-getrak e a outra apps-getrak) contendo 2 clusters (ECS) uma para o jenkins e a outra para o app em flask(api), teremos também um banco de dados RDS com o mysql numa sub-rede privada

### Oque será provisionado:

1. - S3
2. - IAM
3. - VPC
4. - RDS
5. - SG
6. - BILLING
7. - ECR
8. - ECS
