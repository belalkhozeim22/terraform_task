resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.vpc.id
}


resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id
}


resource "aws_route_table_association" "private-route-association-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "private-route-association-2" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route-table.id
}


resource "aws_route_table_association" "public-route-association-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "public-route-association-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}
