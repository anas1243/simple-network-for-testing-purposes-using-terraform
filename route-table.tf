resource "aws_route_table" "terraform_public_RT" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform_igw.id
  }

  tags = {
    Name = "terraform_public_RT"
  }
}

resource "aws_route_table" "terraform_private_RT" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.terraform_nat.id
  }

  tags = {
    Name = "terraform_private_RT"
  }
}


## Route table Association for public subnets

resource "aws_route_table_association" "terraform_public-subnet1_RT_association" {
  subnet_id      = aws_subnet.terraform_public_subnet_1.id
  route_table_id = aws_route_table.terraform_public_RT.id
}

resource "aws_route_table_association" "terraform_public-subnet2_RT_association" {
  subnet_id      = aws_subnet.terraform_public_subnet_2.id
  route_table_id = aws_route_table.terraform_public_RT.id
}

## Route table Association for private subnets

resource "aws_route_table_association" "terraform_private-subnet1_RT_association" {
  subnet_id      = aws_subnet.terraform_private_subnet_1.id
  route_table_id = aws_route_table.terraform_private_RT.id
}

resource "aws_route_table_association" "terraform_private-subnet2_RT_association" {
  subnet_id      = aws_subnet.terraform_private_subnet_2.id
  route_table_id = aws_route_table.terraform_private_RT.id
}