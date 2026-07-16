#resource "aws_instance" "web" {
#  ami                    = "ami-0220d79f3f480ecf5"
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.sg.id]
#
#  tags = {
#    Name = var.name
#  }
#}

variable "region" {
  default = "us-east-1"
}

locals {
  ami_map = {
    us-east-1 = "ami-0220d79f3f480ecf5"
    # add other regions if you copy the AMI
  }
}

resource "aws_instance" "web" {
  ami                    = local.ami_map[var.region]
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = var.name
  }
}


resource "aws_security_group" "sg" {
  name        = var.name
  description = "Allow TLS inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}

variable "name" {}

output "public_ip" {
  value = aws_instance.web.public_ip
}