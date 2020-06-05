provider "packet" {
  auth_token = var.packet_auth_token
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

provider "aws" { 
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

module "create_server" {
  source = "./modules/packet"
  providers = {
    packet = packet
  }
  hostname = var.hostname
  size = var.size
  facility = var.facility
  os = var.os
  billing_cycle = var.billing_cycle
  project_id = var.packet_project_id
}

module "create_dns_with_cloudflare" {
  count = var.dns_provider_cloudflare ? 1 : 0
  source = "./modules/cloudflare"
  providers = {
    cloudflare = cloudflare
  }
  cf_zone_id = var.cloudflare_zone_id
  dns_name = var.hostname
  ip_address = module.create_server.public_ip
}

module "create_dns_with_route53" {
  count = var.dns_provider_route53 ? 1 : 0
  source = "./modules/route53"
  providers = {
    aws = aws
  }
  r53_zone_name = var.r53_zone_name
  dns_name = var.hostname
  ip_address = module.create_server.public_ip
}

