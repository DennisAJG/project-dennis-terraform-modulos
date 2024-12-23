#!/bin/bash
terraform output -json > outputs.json
users=("dennis" "rodrigo")

for user in "${users[@]}"; do
  echo "Processando usuário: ${user}"

  access_key=$(jq -r ".access_keys.value.${user}" outputs.json)
  secret_key=$(jq -r ".secret_keys.value.${user}" outputs.json)

  echo "DEBUG: Access Key: $access_key"
  echo "DEBUG: Secret Key: $secret_key"

  if [[ -n "$access_key" && -n "$secret_key" ]]; then
    jq -n \
      --arg access_key "$access_key" \
      --arg secret_key "$secret_key" \
      '{access_key: $access_key, secret_key: $secret_key}' > "credentials-${user}-devops-getrak.json"
    echo "Arquivo criado: credentials-${user}-devops-getrak.json"
  else
    echo "Erro ao extrair as chaves para o usuário: ${user}"
  fi
done
