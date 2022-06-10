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

resource "cloudflare_record" "_acme-challenge-charleywong-dev" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "_acme-challenge.charleywong-dev"
  value   = "charleywong-dev.giffon.io.m6z0n.flydns.net"
  type    = "CNAME"
  ttl     = 1
}

resource "cloudflare_record" "charleywong-A" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  value   = "37.16.16.171"
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-AAAA" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  value   = "2a09:8280:1::44f4"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-dev-A" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-dev"
  value   = "37.16.16.171"
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-dev-AAAA" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-dev"
  value   = "2a09:8280:1::44f4"
  type    = "AAAA"
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

