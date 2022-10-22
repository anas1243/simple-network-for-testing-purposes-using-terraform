resource "aws_nat_gateway" "terraform_nat" {
  allocation_id = aws_eip.terraform_eip.id
  subnet_id     = aws_subnet.terraform_public_subnet_1.id

  tags = {
    Name = "terraform_nat"
  }

  depends_on = [aws_internet_gateway.terraform_igw]
}