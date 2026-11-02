data "aws_ssm_parameter" "cloudflare_api_token" {
  name = "CLOUDFLARE_API_TOKEN"
}

resource "aws_ssm_parameter" "r2-access-key-id" {
  name  = "r2-access-key-id"
  type  = "String"
  value = cloudflare_account_token.r2.id
}

resource "aws_ssm_parameter" "r2-secret-access-key" {
  name  = "r2-secret-access-key"
  type  = "SecureString"
  value = sha256(cloudflare_account_token.r2.value)
}
