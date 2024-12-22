data "terraform_remote_state" "arn_ecr_applications" {
  backend = "s3"
  config = {
    bucket = "getrak-tfstate-s3-dev"
    key    = "aplications/ecr/terraform.tfstate"
    region = "us-east-1"
  }
}