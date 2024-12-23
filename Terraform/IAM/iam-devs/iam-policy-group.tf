resource "aws_iam_group_policy_attachment" "ecr_group_policy_attachment" {
  group      = aws_iam_group.iam_group_getrak.name
  policy_arn = aws_iam_policy.ecr_push_pull_policy.arn
}