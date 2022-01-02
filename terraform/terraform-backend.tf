module "s3_bucket_terraform" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.11.1"

  bucket = "charleywong-terraform"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

module "dynamodb_table_terraform" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "1.1.0"

  name     = "charleywong-terraform"
  hash_key = "LockID"

  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]
}
