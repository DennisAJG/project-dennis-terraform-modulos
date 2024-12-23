# Criação do Grupo IAM
resource "aws_iam_group" "iam_group_getrak" {
  name = "dev-getrak-group"
}

resource "aws_iam_user_group_membership" "group_membership_getrak" {
  for_each = var.iam_user_getrak_devs

  user = aws_iam_user.iam_user_getrak_devs[each.key].name
  groups = [
    aws_iam_group.iam_group_getrak.name
  ]
}