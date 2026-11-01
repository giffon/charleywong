terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.71"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.28"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3"
    }
  }

  backend "s3" {
    bucket       = "charleywong-terraform"
    key          = "charleywong-terraform.tfstate"
    use_lockfile = true
  }
}

provider "aws" {}
data "aws_region" "current" {}

provider "cloudflare" {
  api_token = data.aws_ssm_parameter.cloudflare_api_token.value
}
