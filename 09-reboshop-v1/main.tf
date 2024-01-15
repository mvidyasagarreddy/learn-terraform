module "frontend" {
  source = "./ec2"
  for_each = var.instances
  name = each.key
}

variable "instances" {
  default = {
    frontend = {}
    mongodb = {}
    catalogue = {}
    redis = {}
    user = {}
    cart = {}
    mysql = {}
    shipping = {}
    rabbitmq = {}
    payment = {}
  }
}