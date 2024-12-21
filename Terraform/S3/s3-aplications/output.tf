output "s3_bucket_name" {
  description = "Nome da bucket que sera criada"
  value       = aws_s3_bucket.bucket_getrak.id
}

output "s3_bucket_arn" {
  description = "ARN da bucket que será criada"
  value       = aws_s3_bucket.bucket_getrak.arn
}