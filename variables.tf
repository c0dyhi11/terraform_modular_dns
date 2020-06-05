variable "packet_auth_token" {
  description = "The API key to connect to packet"
}

variable "packet_project_id" {
  description = "The project to create the server in"
}

variable "hostname" {
  description = "Hostname for server"
  default = "server-name"
}

variable "size" {
  description = "The server plan to use"
  default = "c2.medium.x86"
}

variable "facility" {
  description = "Where to create the server"
  default = "sjc1"
}

variable "os" {
  description = "The operating system to put on the server"
  default = "ubuntu_20_04"
}

variable "billing_cycle" {
  description = "How are you paying for this server?"
  default = "hourly"
}

variable "dns_provider_route53" {
  description = "Use AWS Route53 as the DNS provider"
  default = false
}

variable "r53_zone_name"{
  description = "Which Route53 Zone to create the dns record in?"
  default = "null"
}

variable "aws_access_key"{
  description = "AWS Access Key for Auth"
  default = "null"
}

variable "aws_secret_key"{
  description = "AWS Secret Key for Auth"
  default = "null"
}

variable "aws_region"{
  description = "AWS Region to Authenticate against"
  default = "null"
}

variable "dns_provider_cloudflare" {
  description = "Use CloudFlare as the DNS provider"
  default = false
}

variable "cloudflare_email" {
  description = "Your Cloudflare email address"
  default = "null"
}

variable "cloudflare_api_key" {
  description = "Your Cloudflare API key"
  default = "null"
}

variable "cloudflare_zone_id" {
  description = "Your Cloudflare Zone"
  default = "null"
}

