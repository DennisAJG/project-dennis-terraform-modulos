resource "aws_iam_user_policy_attachment" "ecr_access_getrak" {
  user       = aws_iam_user.iam_user_getrak_devs.name
  policy_arn = aws_iam_policy.ecr_push_pull_policy.arn
}


