resource "aws_iam_user_policy_attachment" "admin_access_getrak" {
  user       = aws_iam_user.iam_user_getrak_devops.name
  policy_arn = var.policy_arn_access_admin_getrak_devops
}