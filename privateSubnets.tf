resource "aws_subnet" "terraform_private_subnet_1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "terraform_private_subnet_1"
  }
}

resource "aws_subnet" "terraform_private_subnet_2" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "terraform_private_subnet_2"
  }
}