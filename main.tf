provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_record" "links" {
  domain = "${var.cloudfare_domain}"
  name   = "links"

  value   = "${var.cloudfare_target_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_page_rule" "rule" {
  zone   = "${var.cloudfare_domain}"
  target = "${var.cloudfare_domain}/${var.redirection_prefix}*"

  actions = {
    forwarding_url {
      url         = "https://links.${var.cloudfare_domain}/$1"
      status_code = "301"
    }
  }
}
