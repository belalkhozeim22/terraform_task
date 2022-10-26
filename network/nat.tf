resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = aws_eip.elastic-ip.id
  subnet_id     = aws_subnet.public-subnet-1.id
  depends_on = [aws_internet_gateway.internet-gateway]
}
