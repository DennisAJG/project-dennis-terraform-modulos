resource "aws_iam_user" "iam_user_getrak_devops" {
  name = var.iam_user_getrak_devops
  force_destroy = true # Permite deletar o usuário mesmo que tenha recursos associados

  tags = local.common_tags
}

resource "aws_iam_access_key" "iam_access_key_getrak"{
  user    = aws_iam_user.iam_user_getrak_devops.name
  depends_on = [aws_iam_user_policy_attachment.admin_access_getrak] # Garante que a política seja anexada antes

}

