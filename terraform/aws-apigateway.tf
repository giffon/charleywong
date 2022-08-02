resource "aws_api_gateway_domain_name" "charleywong-giffon-io" {
  domain_name              = "charleywong.giffon.io"
  regional_certificate_arn = aws_acm_certificate.giffon-io.arn
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
resource "aws_api_gateway_domain_name" "master-charleywong-giffon-io" {
  domain_name              = "charleywong-master.giffon.io"
  regional_certificate_arn = aws_acm_certificate.giffon-io.arn
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
resource "aws_api_gateway_domain_name" "dev-charleywong-giffon-io" {
  domain_name              = "charleywong-dev.giffon.io"
  regional_certificate_arn = aws_acm_certificate.giffon-io.arn
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

data "aws_apigatewayv2_api" "production-charleywong" {
  api_id = "uvsvdas0l0"
}
data "aws_apigatewayv2_api" "master-charleywong" {
  api_id = "1tz21peo53"
}
data "aws_api_gateway_rest_api" "dev-charleywong" {
  name = "dev-charleywong"
}

resource "aws_api_gateway_base_path_mapping" "charleywong-giffon-io" {
  api_id      = data.aws_apigatewayv2_api.production-charleywong.id
  stage_name  = "$default"
  domain_name = aws_api_gateway_domain_name.charleywong-giffon-io.domain_name
}
resource "aws_api_gateway_base_path_mapping" "master-charleywong-giffon-io" {
  api_id      = data.aws_apigatewayv2_api.master-charleywong.id
  stage_name  = "$default"
  domain_name = aws_api_gateway_domain_name.master-charleywong-giffon-io.domain_name
}
resource "aws_api_gateway_base_path_mapping" "dev-charleywong-giffon-io" {
  api_id      = data.aws_api_gateway_rest_api.dev-charleywong.id
  stage_name  = "dev"
  domain_name = aws_api_gateway_domain_name.dev-charleywong-giffon-io.domain_name
}
