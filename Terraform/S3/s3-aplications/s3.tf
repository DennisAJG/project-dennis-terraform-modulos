resource "aws_s3_bucket" "bucket_getrak" {
  bucket = "${var.name_bucket_getrak}-s3-${var.environment_name}"

  tags = merge(
    local.common_tags,
    {
      "Name" = "${var.name_bucket_getrak}-s3-${var.environment_name}"
    }
  )
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block_getrak" {
  bucket = aws_s3_bucket.bucket_getrak.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_versioning" "bucket_versioning_getrak" {
  bucket = aws_s3_bucket.bucket_getrak.id
  versioning_configuration {
    status = "Enabled"
  }
}