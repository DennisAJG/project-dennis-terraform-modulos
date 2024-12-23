# Historico de Atividades pro projecto

### AWS IAM
Criação de 4 usuários IAM, com dois para o time de DevOps e os outros dois para o time de Dev

#### Usuários DevOps:
1 - dennis-devops-master
2 - rodrigo-devops-jr 


#### Usuário Dev:
1 - Maycon-dev-master
2 - Sara-dev-jr

#### O primeiro user (dennis-devops-master) será criado via aws-cli com acesso adm total

## IAM 

###### dennis-devops-master-getrak
aws iam create-user --user-name dennis-devops-master-getrak -> Criando o usuario
aws iam attach-user-policy --user-name dennis-devops-master-getrak --policy-arn arn:aws:iam::aws:policy/AdministratorAccess -> atribuindo a politica de administrador ao usuário.
aws iam create-access-key --user-name dennis-devops-master-getrak >> credentials-dennis-devops-getrak.json -> cria uma access-key e secret-key pro user e armazena num arquivo json

vault secrets enable -path=aws-credentials kv -> cria uma secret para aws-credentials
vault kv put aws-credentials/iam-access-key-devops/dennis-devops-master-getrak access_key="" secret_key="" -> armezena a access-key e secret-key do usuário no path
vault kv get aws-credentials/iam-access-key-devops/dennis-devops-master-getrak -> visualiza a acess-key e secret-key do usuário


###### rodrigo-devops-jr-getrak
no terraform foi adicionado os valores:
var.iam_user_getrak_devops
  Nome do usuário iam para devops

  Enter a value: rodrigo

var.job_gretak
  Nome da profissão o usuário é

  Enter a value: devops

var.nivel_job_gretak
  Nível da profissão o usuário é

  Enter a value: jr

vault kv put aws-credentials/iam-access-key-devops/rodrigo-devops-jr-getrak access_key="" secret_key=""

terraform output -json | jq '{access_key: .access_key.value, secret_key: .secret_key.value}' > ceredentials-rodrigo-devops-getrak.json


###### maycon-dev-master-getrak
terraform output -json | jq '{access_key: .access_key.value, secret_key: .secret_key.value}' > credentials-maycon-dev-getrak.json



#### OBS:
Você pode executar o script "acesso-aws-configure.bash" onde ele já deixa por default o access-key e secret-key que está armazenado no vault



## S3

###### Criação da s3 para backend tfstate
caminho para executar o terraform plan (visualize o arquivo variables para adicionar as informações):
Terraform/S3/s3-tfstate

###### Criação da s3 para Application:
caminho para executar o terraform plan:
Terraform/S3/s3-aplications
s3_bucket_arn = "arn:aws:s3:::applications-s3-dev"
s3_bucket_name = "applications-s3-dev"



## ECR

###### Criação da ecr para application:
Caminho para executar o terraform plan:
Terraform/ECR/ecr-applications
ecr_repository_url_applications_getrak = "891612581071.dkr.ecr.us-east-1.amazonaws.com/application-flaskapi-ecr-getrak-dev"
