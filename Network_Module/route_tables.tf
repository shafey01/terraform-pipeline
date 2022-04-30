resource "aws_route_table" "table_1" {
  vpc_id = aws_vpc.mainVPC.id

 

  tags = {
    Name = "table_1"
  }
}


# resource "aws_route_table" "table_2" {
#   vpc_id = aws_vpc.mainVPC.id

  

#   tags = {
#     Name = "table_2"
#   }
# }

resource "aws_route" "r1" {
  route_table_id            = aws_route_table.table_1.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.gw.id
}

# resource "aws_route" "r2" {
#   route_table_id            = aws_route_table.table_2.id
#   destination_cidr_block    = "0.0.0.0/0"
#   gateway_id                = aws_internet_gateway.private.id


# }


resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.table_1.id
}


resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.table_1.id
}

resource "aws_route_table_association" "a3" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.table_1.id
}

resource "aws_route_table_association" "a4" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.table_1.id
}