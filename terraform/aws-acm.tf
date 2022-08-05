resource "aws_acm_certificate" "giffon-io" {
  domain_name               = data.cloudflare_zone.giffonio.name
  subject_alternative_names = ["*.${data.cloudflare_zone.giffonio.name}"]
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate" "charleywong-info" {
  domain_name = data.cloudflare_zone.charleywong-info.name
  subject_alternative_names = [
    "www.${data.cloudflare_zone.charleywong-info.name}",
    "master.${data.cloudflare_zone.charleywong-info.name}",
    "dev.${data.cloudflare_zone.charleywong-info.name}",
  ]
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "charleywong-info-aws-acm" {
  for_each = {
    for dvo in aws_acm_certificate.charleywong-info.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  zone_id         = data.cloudflare_zone.charleywong-info.id
  name            = each.value.name
  value           = each.value.record
  type            = each.value.type
  ttl             = 1
}

resource "aws_acm_certificate_validation" "charleywong-info" {
  certificate_arn         = aws_acm_certificate.charleywong-info.arn
  validation_record_fqdns = [for record in cloudflare_record.charleywong-info-aws-acm : record.hostname]
}
