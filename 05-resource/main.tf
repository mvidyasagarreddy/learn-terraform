data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["973714476881"] # Canonical
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}