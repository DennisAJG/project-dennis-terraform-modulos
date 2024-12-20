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

###### dennis-devops-master-getrak
aws iam create-user --user-name dennis-devops-master-getrak -> Criando o usuario
aws iam attach-user-policy --user-name dennis-devops-master-getrak --policy-arn arn:aws:iam::aws:policy/AdministratorAccess -> atribuindo a politica de administrador ao usuário.
aws iam create-access-key --user-name dennis-devops-master-getrak >> credentials-dennis-devops-getrak.json -> cria uma access-key e secret-key pro user e armazena num arquivo json

vault secrets enable -path=aws-credentials kv -> cria uma secret para aws-credentials
vault kv put aws-credentials/iam-access-key-devops/dennis-devops-master-getrak access_key="" secret_key="" -> armezena a access-key e secret-key do usuário no path
vault kv get aws-credentials/iam-access-key-devops/dennis-devops-master-getrak -> visualiza a acess-key e secret-key do usuário

#### OBS:
Você pode executar o script "acesso-aws-configure.bash" onde ele já deixa por default o access-key e secret-key que está armazenado no vault



## Criação da s3 para backend tfstate
caminho para executar o terraform plan (visualize o arquivo variables para adicionar as informações):
Terraform/S3/s3-tfstate