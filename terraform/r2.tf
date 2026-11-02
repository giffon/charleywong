locals {
  cloudflare_account_id = "f184c98e4ba41baaf6a081d9d6e599e6"
}

resource "cloudflare_r2_bucket" "terraform" {
  account_id = local.cloudflare_account_id
  name       = "charleywong-terraform"
  location   = "APAC"
}

data "cloudflare_account_api_token_permission_groups_list" "r2-bucket-item-write" {
  account_id = local.cloudflare_account_id
  name       = "Workers R2 Storage Bucket Item Write"
}

# R2 S3-compatible credentials of the charleywong-* buckets, used by the tf backend (see r2.aws-config) and rclone (see ../rclone.conf).
# Tokens can't be scoped by bucket name prefix, so list every bucket.
# https://developers.cloudflare.com/r2/api/tokens/#get-s3-api-credentials-from-an-api-token
resource "cloudflare_account_token" "r2" {
  account_id = local.cloudflare_account_id
  name       = "charleywong-r2"
  policies = [{
    effect            = "allow"
    permission_groups = [{ id = data.cloudflare_account_api_token_permission_groups_list.r2-bucket-item-write.result[0].id }]
    resources = jsonencode({
      "com.cloudflare.edge.r2.bucket.${local.cloudflare_account_id}_default_${cloudflare_r2_bucket.terraform.name}" = "*"
    })
  }]
}
