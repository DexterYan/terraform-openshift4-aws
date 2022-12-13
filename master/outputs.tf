output "ip_addresses" {
  value = aws_instance.master[*].public_dns
}

