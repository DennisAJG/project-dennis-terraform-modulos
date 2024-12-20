#!/bin/bash

# Recuperar as credenciais do Vault
ACCESS_KEY=$(vault kv get -field=access_key aws-credentials/iam-access-key-devops/dennis-devops-master-getrak)
SECRET_KEY=$(vault kv get -field=secret_key aws-credentials/iam-access-key-devops/dennis-devops-master-getrak)

# Configurar o perfil específico
aws configure set aws_access_key_id $ACCESS_KEY --profile dennis-devops-master-getrak
aws configure set aws_secret_access_key $SECRET_KEY --profile dennis-devops-master-getrak
aws configure set region us-east-1 --profile dennis-devops-master-getrak

# Configurar o perfil default
aws configure set aws_access_key_id $ACCESS_KEY --profile default
aws configure set aws_secret_access_key $SECRET_KEY --profile default
aws configure set region us-east-1 --profile default
