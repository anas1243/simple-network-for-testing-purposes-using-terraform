resource "aws_instance" "terraform_ec2" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.terraform_public_subnet_1.id
  key_name = "gp_aws_key"
  vpc_security_group_ids  =  [aws_security_group.terratorm_allow_ssh_http_SG.id]
  tags = {
    "Name" = "terraform_ec2"
  }
}