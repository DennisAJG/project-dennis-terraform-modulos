resource "aws_iam_user" "iam_user_getrak_devs" {
  name          = "${var.iam_user_getrak_devs}-${var.job_gretak}-${var.nivel_job_gretak}-getrak"
  force_destroy = true # Permite deletar o usuário mesmo que tenha recursos associados

}

resource "aws_iam_access_key" "iam_access_key_getrak" {
  user       = aws_iam_user.iam_user_getrak_devs.name
   # Garante que a política seja anexada antes

}

