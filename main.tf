# create nat gateway
resource "aws_eip" "nat_gateway_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = var.public_subnet_id // Ensure this is a public subnet

  tags = {
    Name = "${var.project_name}-nat-gateway"
  }

  depends_on = [aws_internet_gateway.internet_gateway]
}
