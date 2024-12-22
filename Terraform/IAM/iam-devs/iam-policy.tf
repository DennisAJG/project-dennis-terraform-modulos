##  Policy for ECR
resource "aws_iam_policy" "ecr_push_pull_policy" {
  name        = "ECRPushPullPolicy"
  description = "Policy for push and pull to specific ECR repository Getrak"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "ecr:BatchCheckLayerAvailability",
          "ecr:CompleteLayerUpload",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:InitiateLayerUpload",
          "ecr:PutImage",
          "ecr:UploadLayerPart"
        ],
        Resource = data.terraform_remote_state.arn_ecr_applications.outputs.arn_ecr_applications_getrak
      },
      {
        Effect = "Allow",
        Action = [
          "ecr:GetAuthorizationToken"
        ],
        Resource = "*"
      }
    ]
  })
}