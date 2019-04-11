variable "cloudfare_domain" {
  description = "Your domain like 'moreal.kr'"
  default     = "your-domain"
}

variable "cloudfare_target_domain" {
  description = "Your domain for links like 'links.moreal.kr'"
  default     = "links.your-domain"
}

variable "redirection_prefix" {
  description = "The prefix for redirection like '~'"
  default     = "~"
}

variable "cloudflare_email" {
  description = "Email of your cloudflare account"
  default     = "your-email"
}

variable "cloudflare_token" {
  description = "Token for cloudflare api access"
  default     = "your-token"
}
