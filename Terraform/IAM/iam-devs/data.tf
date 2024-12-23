data "terraform_remote_state" "arn_ecr_applications" {
  backend = "s3"
  config = {
    bucket = "getrak-tfstate-s3-dev"
    key    = "aplications/ecr/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "arn_s3_applications" {
  backend = "s3"
  config = {
    bucket = "getrak-tfstate-s3-dev"
    key    = "aplications/s3/terraform.tfstate"
    region = "us-east-1"
  }
}