#Provider block

terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.aws_region
  profile = "ginoo"
}
