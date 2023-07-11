output "network_interface_ids" {
  value = aws_network_interface.server-nic[*].id
}

output "private_ip_addresses" {
  value = aws_network_interface.server-nic[*].private_ips
}
