terraform {
  backend "s3" {}
}


output "demo" {
  value = "Hello World"
}