resource "packet_device" "server" {
    hostname         = var.hostname
    plan             = var.size
    facilities       = [var.facility]
    operating_system = var.os
    billing_cycle    = var.billing_cycle
    project_id       = var.project_id
}

