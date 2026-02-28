variable "sample" {
  default = 100
}

variable "sample1" {
  default = "HelloWorld"
}

variable "sample-ext" {
  default = "Mawa"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

#Sometimes if variable/any reference with the combination of some other strings then
#we have to access those in ${}

output "sample-ext" {
  value = "Value of sample is - ${var.sample-ext}"
}