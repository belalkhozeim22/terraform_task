resource "aws_eip" "elastic-ip" {
  depends_on = [aws_internet_gateway.internet-gateway]

}