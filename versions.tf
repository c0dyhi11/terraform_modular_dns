terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    cloudflare = {
      source = "terraform-providers/cloudflare"
    }
    packet = {
      source = "terraform-providers/packet"
    }
  }
  required_version = ">= 0.13"
}
