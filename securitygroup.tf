resource "aws_security_group" "public_sec_group" {
  name        = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} public security group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.Terraform_provisioned_vpc.id
  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group_rule" "public_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public_sec_group.id
}

resource "aws_security_group_rule" "public_inbound" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [aws_vpc.Terraform_provisioned_vpc.cidr_block, "0.0.0.0/0"]
  security_group_id = aws_security_group.public_sec_group.id
}

resource "aws_security_group" "private_sec_group" {
  name        = "${aws_vpc.Terraform_provisioned_vpc.tags.Name} private security group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.Terraform_provisioned_vpc.id
  tags = {
    Name = "allow_tls"
  }
}


resource "aws_security_group_rule" "private_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.private_sec_group.id
}

resource "aws_security_group_rule" "private_inbound" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = [aws_vpc.Terraform_provisioned_vpc.cidr_block]
  security_group_id = aws_security_group.private_sec_group.id
}