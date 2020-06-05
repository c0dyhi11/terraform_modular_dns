resource "cloudflare_record" "dns_a_record" {
  zone_id = var.cf_zone_id
  type = "A"
  name = var.dns_name
  value = var.ip_address
}
