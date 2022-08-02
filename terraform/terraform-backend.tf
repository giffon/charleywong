module "s3_bucket_terraform" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.3.0"

  bucket = "charleywong-terraform"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

module "dynamodb_table_terraform" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "3.0.0"

  name     = "charleywong-terraform"
  hash_key = "LockID"

  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]
}
