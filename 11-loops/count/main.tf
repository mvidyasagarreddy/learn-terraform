resource "aws_instance" "web" {
  count = length(var.instances)
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"

  tags = {
    Name = var.instances[count.index]
  }
}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

provider "aws" {
  region = "us-east-1"
}

variable "instances" {
  default = ["frontend", "catalogue", "cart"]
}