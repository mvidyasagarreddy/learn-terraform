resource "aws_instance" "web" {
  ami                    = data.aws_ami.example.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-02b2bbcf5fcdac62b"]

  tags = {
    Name = "HelloWorld"
  }

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/mvidyasagarreddy/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
    ]
  }

}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Redhat-9-DevOps-Practice"
}