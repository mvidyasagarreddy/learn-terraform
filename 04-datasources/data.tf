data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-west-2a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "aws_ec2_spot_price" {
  value = data.aws_ec2_spot_price.spot_price
}