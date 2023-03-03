terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.24"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.25"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3"
    }
  }

  backend "s3" {
    bucket         = "charleywong-terraform"
    key            = "charleywong-terraform.tfstate"
    dynamodb_table = "charleywong-terraform"
  }
}

provider "aws" {}
data "aws_region" "current" {}

provider "cloudflare" {
  api_token = data.aws_ssm_parameter.cloudflare_api_token.value
}
