terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "gitops-project0845"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.9.6"
}
