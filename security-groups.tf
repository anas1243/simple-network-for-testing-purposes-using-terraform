resource "aws_security_group" "terratorm_allow_ssh_http_SG" {
  name        = "allow_ssh_and_http"
  description = "Allow ssh and http inbound traffic"
  vpc_id      = aws_vpc.terraform_vpc.id

  tags = {
    Name = "terratorm_allow_ssh_http_SG"
  }
}

resource "aws_security_group_rule" "terraform_ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terratorm_allow_ssh_http_SG.id
}

resource "aws_security_group_rule" "terraform_ingress_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terratorm_allow_ssh_http_SG.id
}


resource "aws_security_group_rule" "terraform_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terratorm_allow_ssh_http_SG.id
}