data "cloudflare_zone" "giffonio" {
  name = "giffon.io"
}

resource "cloudflare_record" "_acme-challenge-charleywong" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "_acme-challenge.charleywong"
  value   = "charleywong.giffon.io.m6z0n.flydns.net"
  type    = "CNAME"
  ttl     = 1
}

resource "cloudflare_record" "charleywong" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  value   = "d-ym2czixfq5.execute-api.us-east-1.amazonaws.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-dev" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-dev"
  value   = "d-786mbxxpy7.execute-api.us-east-1.amazonaws.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-master" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-master"
  value   = "d-uifndvj038.execute-api.us-east-1.amazonaws.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

