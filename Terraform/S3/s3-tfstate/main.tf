terraform {
  required_version = ">=1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = merge(
      local.common_tags,
        {
            "Provider" = "aws",
            "Service" = "s3"
        }
      )
  }
}