resource "aws_subnet" "terraform_public_subnet_1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform_public_subnet_1"
  }
}

resource "aws_subnet" "terraform_public_subnet_2" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform_public_subnet_2"
  }
}