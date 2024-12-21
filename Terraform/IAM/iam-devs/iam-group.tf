# Criação do Grupo IAM
resource "aws_iam_group" "iam_group_getrak" {
  name = "${var.job_gretak}-getrak-group"
}

resource "aws_iam_user_group_membership" "group_membership_getrak" {
  user = "${var.iam_user_getrak_devs}-${var.job_gretak}-${var.nivel_job_gretak}-getrak" # Substitua pelo nome do usuário
  groups = [
    aws_iam_group.iam_group_getrak.name
  ]
}