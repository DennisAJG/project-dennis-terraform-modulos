resource "aws_iam_group_policy_attachment" "admin_group_policy_attachment" {
  group      = aws_iam_group.iam_group_getrak.name
  policy_arn = aws_iam_policy.admin_access_policy.arn
}