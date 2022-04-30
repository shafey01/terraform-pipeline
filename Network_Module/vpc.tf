resource "aws_vpc" "mainVPC" {


  cidr_block       = var.vpc_cidr
  tags = {
    Name = "main"
  }
}