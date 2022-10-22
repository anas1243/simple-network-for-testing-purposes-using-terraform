resource "aws_eip" "terraform_eip" {
    tags = {
        Name = "terraform_eip"
    }
}