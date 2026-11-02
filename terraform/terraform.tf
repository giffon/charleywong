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

  # State lives in the R2 bucket in r2.tf.
  backend "s3" {
    bucket    = "charleywong-terraform"
    key       = "charleywong-terraform.tfstate"
    region    = "auto"
    endpoints = { s3 = "https://${local.cloudflare_account_id}.r2.cloudflarestorage.com" }

    # Backend-only profile that fetches the R2 keys from SSM, leaving the AWS env credentials to the aws provider.
    # The path is relative to the working directory, so run tofu from here or with -chdir=terraform.
    profile             = "charleywong-r2"
    shared_config_files = ["r2.aws-config"]

    use_lockfile = true

    # R2 isn't AWS: skip the AWS-specific checks
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
}

provider "aws" {}
data "aws_region" "current" {}

provider "cloudflare" {
  api_token = data.aws_ssm_parameter.cloudflare_api_token.value
}
