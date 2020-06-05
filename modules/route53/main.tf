data "aws_route53_zone" "selected" {
  name  = var.r53_zone_name
}

resource "aws_route53_record" "dns_record" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = format("%s.%s", var.dns_name, data.aws_route53_zone.selected.name)
  type    = "A"
  ttl     = "300"
  records = [var.ip_address]
}
