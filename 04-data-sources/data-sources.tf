data "aws_ec2_spot_price" "example" {
  instance_type = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

data "aws_security_group" "sgid" {
  name = "allow-all"
}



output "price" {
  value = data.aws_ec2_spot_price.example.spot_price
}

output "sgid" {
  value = data.aws_security_group.sgid.id
}