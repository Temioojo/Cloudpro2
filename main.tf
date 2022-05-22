
resource "aws_vpc" "cloudproserver" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Main"
 }
}


