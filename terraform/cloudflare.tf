data "cloudflare_zone" "giffonio" {
  name = "giffon.io"
}
data "cloudflare_zone" "charleywong-info" {
  name = "charleywong.info"
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

resource "cloudflare_record" "charleywong" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  value   = "d-ym2czixfq5.execute-api.us-east-1.amazonaws.com"
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


resource "cloudflare_record" "charleywong-info-mx10" {
  zone_id         = data.cloudflare_zone.charleywong-info.id
  name            = "charleywong.info"
  value           = "spool.mail.gandi.net"
  type            = "MX"
  priority        = 10
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "charleywong-info-mx50" {
  zone_id         = data.cloudflare_zone.charleywong-info.id
  name            = "charleywong.info"
  value           = "fb.mail.gandi.net"
  type            = "MX"
  priority        = 50
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "charleywong-info-spf" {
  zone_id         = data.cloudflare_zone.charleywong-info.id
  name            = "charleywong.info"
  value           = "v=spf1 include:_mailcust.gandi.net ?all"
  type            = "TXT"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "charleywong-info-imap" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "_imap._tcp"
  type    = "SRV"
  ttl     = 1
  proxied = false

  data {
    name     = "charleywong.info"
    service  = "_imap"
    proto    = "_tcp"
    target   = "."
    priority = 0
  }
}

resource "cloudflare_record" "charleywong-info-imaps" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "_imaps._tcp"
  type    = "SRV"
  ttl     = 1
  proxied = false

  data {
    name     = "charleywong.info"
    service  = "_imaps"
    proto    = "_tcp"
    target   = "mail.gandi.net"
    port     = 993
    priority = 0
    weight   = 1
  }
}

resource "cloudflare_record" "charleywong-info-pop3" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "_pop3._tcp"
  type    = "SRV"
  ttl     = 1
  proxied = false

  data {
    name     = "charleywong.info"
    service  = "_pop3"
    proto    = "_tcp"
    target   = "."
    priority = 0
  }
}

resource "cloudflare_record" "charleywong-info-pop3s" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "_pop3s._tcp"
  type    = "SRV"
  ttl     = 1
  proxied = false

  data {
    name     = "charleywong.info"
    service  = "_pop3s"
    proto    = "_tcp"
    target   = "mail.gandi.net"
    port     = 995
    priority = 10
    weight   = 1
  }
}

resource "cloudflare_record" "charleywong-info-submission" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "_submission._tcp"
  type    = "SRV"
  ttl     = 1
  proxied = false

  data {
    name     = "charleywong.info"
    service  = "_submission"
    proto    = "_tcp"
    target   = "mail.gandi.net"
    port     = 465
    priority = 0
    weight   = 1
  }
}


resource "cloudflare_record" "charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "@"
  value   = aws_apigatewayv2_domain_name.charleywong-info.domain_name_configuration[0].target_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "master-charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "master"
  value   = aws_apigatewayv2_domain_name.master-charleywong-info.domain_name_configuration[0].target_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "charleywong-info-google-site-verification" {
  zone_id         = data.cloudflare_zone.charleywong-info.id
  name            = "charleywong.info"
  value           = "google-site-verification=TFGkVTRD6zOXMvG2noli7AlHKZXiMIi9JmvSk1dD6S8"
  type            = "TXT"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}
