resource "aws_iam_user" "iam_user_getrak_devops" {
  name          = "${var.iam_user_getrak_devops}-${var.job_gretak}-${var.nivel_job_gretak}-getrak"
  force_destroy = true # Permite deletar o usuário mesmo que tenha recursos associados

}

resource "aws_iam_access_key" "iam_access_key_getrak" {
  user       = aws_iam_user.iam_user_getrak_devops.name
  depends_on = [aws_iam_user_policy_attachment.admin_access_getrak] # Garante que a política seja anexada antes

}

