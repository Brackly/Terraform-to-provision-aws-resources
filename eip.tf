resource "aws_eip" "lb" {
  vpc      = true

  tags = {
    "Name" = "Terraform elastic ip"
  }
}