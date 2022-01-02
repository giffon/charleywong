terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.6"
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

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# provider "cloudflare" {
#   api_token = data.aws_ssm_parameter.cloudflare_api_token.value
# }
