variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

# Sometime if variable/any reference with the combination of some other string
# then you have to access those in ${}

output "sample-ext" {
  value = "value of sample - ${var.sample}"
}