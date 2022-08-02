resource "aws_acm_certificate" "giffon-io" {
  domain_name               = data.cloudflare_zone.giffonio.name
  subject_alternative_names = ["*.${data.cloudflare_zone.giffonio.name}"]
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}
