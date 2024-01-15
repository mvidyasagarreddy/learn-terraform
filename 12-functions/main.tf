variable "class" {
  default = "devops"
}

output "class" {
  value = upper(var.class)
}