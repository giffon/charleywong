data "cloudflare_zone" "giffonio" {
  filter = {
    name = "giffon.io"
  }
}
data "cloudflare_zone" "charleywong-info" {
  filter = {
    name = "charleywong.info"
  }
}

resource "cloudflare_dns_record" "charleywong" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  content = aws_api_gateway_domain_name.charleywong-giffon-io.regional_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "charleywong-master" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-master"
  content = aws_api_gateway_domain_name.master-charleywong-giffon-io.regional_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}


resource "cloudflare_dns_record" "charleywong-dev-A" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-dev"
  content = "37.16.16.171"
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "charleywong-dev-AAAA" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-dev"
  content = "2a09:8280:1::44f4"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}


resource "cloudflare_dns_record" "charleywong-info-mx10" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "charleywong.info"
  content  = "spool.mail.gandi.net"
  type     = "MX"
  priority = 10
  ttl      = 1
  proxied  = false
}

resource "cloudflare_dns_record" "charleywong-info-mx50" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "charleywong.info"
  content  = "fb.mail.gandi.net"
  type     = "MX"
  priority = 50
  ttl      = 1
  proxied  = false
}

resource "cloudflare_dns_record" "charleywong-info-spf" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "charleywong.info"
  content = "v=spf1 include:_mailcust.gandi.net ?all"
  type    = "TXT"
  ttl     = 1
  proxied = false
}

resource "cloudflare_dns_record" "charleywong-info-imap" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "_imap._tcp"
  type     = "SRV"
  ttl      = 1
  proxied  = false
  priority = 0

  data = {
    target   = "."
    port     = 0
    priority = 0
    weight   = 0
  }
}

resource "cloudflare_dns_record" "charleywong-info-imaps" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "_imaps._tcp"
  type     = "SRV"
  ttl      = 1
  proxied  = false
  priority = 0

  data = {
    target   = "mail.gandi.net"
    port     = 993
    priority = 0
    weight   = 1
  }
}

resource "cloudflare_dns_record" "charleywong-info-pop3" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "_pop3._tcp"
  type     = "SRV"
  ttl      = 1
  proxied  = false
  priority = 0

  data = {
    target   = "."
    port     = 0
    priority = 0
    weight   = 0
  }
}

resource "cloudflare_dns_record" "charleywong-info-pop3s" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "_pop3s._tcp"
  type     = "SRV"
  ttl      = 1
  proxied  = false
  priority = 10

  data = {
    target   = "mail.gandi.net"
    port     = 995
    priority = 10
    weight   = 1
  }
}

resource "cloudflare_dns_record" "charleywong-info-submission" {
  zone_id  = data.cloudflare_zone.charleywong-info.id
  name     = "_submission._tcp"
  type     = "SRV"
  ttl      = 1
  proxied  = false
  priority = 0

  data = {
    target   = "mail.gandi.net"
    port     = 465
    priority = 0
    weight   = 1
  }
}


resource "cloudflare_dns_record" "charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "@"
  content = aws_apigatewayv2_domain_name.charleywong-info.domain_name_configuration[0].target_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "master-charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "master"
  content = aws_apigatewayv2_domain_name.master-charleywong-info.domain_name_configuration[0].target_domain_name
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "charleywong-info-google-site-verification" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "charleywong.info"
  content = "google-site-verification=TFGkVTRD6zOXMvG2noli7AlHKZXiMIi9JmvSk1dD6S8"
  type    = "TXT"
  ttl     = 1
  proxied = false
}

# Cloudflare doesn't cache HTML/JSON by default (cf-cache-status: DYNAMIC),
# so every page view hits API Gateway + Lambda even though the origin sends Cache-Control.
# Make everything cacheable and let the origin's Cache-Control decide the TTLs.
resource "cloudflare_ruleset" "charleywong-info-cache" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "default"
  kind    = "zone"
  phase   = "http_request_cache_settings"
  rules = [
    {
      ref         = "cache_everything"
      description = "Cache all responses, respecting origin Cache-Control"
      expression  = "(http.host in {\"charleywong.info\" \"master.charleywong.info\"})"
      action      = "set_cache_settings"
      action_parameters = {
        cache = true
        edge_ttl = {
          mode = "respect_origin"
        }
        browser_ttl = {
          mode = "respect_origin"
        }
      }
    }
  ]
}
