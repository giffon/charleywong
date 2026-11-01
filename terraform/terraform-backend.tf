module "s3_bucket_terraform" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.17.0"

  bucket = "charleywong-terraform"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
