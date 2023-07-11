resource "aws_network_interface" "server-nic" {
  count           = var.nic_count
  subnet_id       = var.subnet_cidr[count.index]
  # private_ips    = [var.ips]
  security_groups = [var.sg-id]
}