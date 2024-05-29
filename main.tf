# create nat gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "${var.project_name}-nat-eip"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  depends_on = [
    aws_eip.nat_eip,
  ]
  
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = module.subnets.subnet_ids

  tags = {
    Name = "${var.project_name}-nat-gateway"
  }
}
