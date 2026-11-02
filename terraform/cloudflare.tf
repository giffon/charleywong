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

# The legacy hostnames, redirected by cloudflare_ruleset.giffon-io-redirect. The addresses are placeholders.
resource "cloudflare_dns_record" "charleywong" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong"
  content = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "charleywong-master" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "charleywong-master"
  content = "100::"
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


# Served by the Worker routes of wrangler.jsonc. The addresses are placeholders.
resource "cloudflare_dns_record" "charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "@"
  content = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "master-charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "master"
  content = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}

# Served by the Worker route of img/wrangler.jsonc. The address is a placeholder.
resource "cloudflare_dns_record" "img-charleywong-info" {
  zone_id = data.cloudflare_zone.charleywong-info.id
  name    = "img"
  content = "100::"
  type    = "AAAA"
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

resource "cloudflare_ruleset" "giffon-io-redirect" {
  zone_id = data.cloudflare_zone.giffonio.id
  name    = "default"
  kind    = "zone"
  phase   = "http_request_dynamic_redirect"
  rules = [
    {
      ref         = "charleywong"
      description = "charleywong.giffon.io has moved to charleywong.info"
      expression  = "(http.host eq \"charleywong.giffon.io\")"
      action      = "redirect"
      action_parameters = {
        from_value = {
          status_code = 301
          target_url = {
            expression = "concat(\"https://charleywong.info\", http.request.uri.path)"
          }
          preserve_query_string = true
        }
      }
    },
    {
      ref         = "charleywong-master"
      description = "charleywong-master.giffon.io has moved to master.charleywong.info"
      expression  = "(http.host eq \"charleywong-master.giffon.io\")"
      action      = "redirect"
      action_parameters = {
        from_value = {
          status_code = 301
          target_url = {
            expression = "concat(\"https://master.charleywong.info\", http.request.uri.path)"
          }
          preserve_query_string = true
        }
      }
    },
  ]
}
