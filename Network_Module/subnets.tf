resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.mainVPC.id

  cidr_block = var.public_1_cidr
  map_public_ip_on_launch = true
  availability_zone  = var.AZ_1

  tags = {
    Name = "public_1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.mainVPC.id
  
  cidr_block = var.public_2_cidr
  map_public_ip_on_launch = true
  availability_zone  = var.AZ_2


  tags = {
    Name = "public_2"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.mainVPC.id
  
  cidr_block = var.private_1_cidr
  map_public_ip_on_launch = false
  availability_zone  = var.AZ_1


  tags = {
    Name = "private_1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.mainVPC.id
  
  cidr_block = var.private_2_cidr
  map_public_ip_on_launch = false
  availability_zone  = var.AZ_2


  tags = {
    Name = "private_1"
  }
}