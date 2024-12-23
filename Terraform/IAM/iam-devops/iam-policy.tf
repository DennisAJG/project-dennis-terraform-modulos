resource "aws_iam_policy" "admin_access_policy" {
  name        = "AdminAccessPolicy"
  description = "Policy granting administrative access to all AWS resources"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "*",
        Resource = "*"
      }
    ]
  })
}
