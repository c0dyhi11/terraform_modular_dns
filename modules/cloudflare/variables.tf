variable "cf_zone_id" {
    description = "Cloudflare Zone ID"
    type = string
}

variable "dns_name" {
    description = "DNS Hostname"
    type = string
}

variable "ip_address" {
    description = "IP Address for A record"
    type = string
}
