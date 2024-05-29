# outputs for the module
output "nat_gateway_id" {
  description = "The ID of the created NAT Gateway"
  value       = aws_nat_gateway.nat_gateway.id
}

output "nat_gateway_eip" {
  description = "The Elastic IP associated with the NAT Gateway"
  value       = aws_eip.nat_eip.id
}
