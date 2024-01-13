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

#Variable Data Types
#1. String
#2. number
#3. boolean

#Variable Types
#In Ansible - 1. Plain key value 2. list 3. Map/Dict

#Terraform Variable Types
#1. Plain
#2. List
#3. Map/Dict

#Plain
variable "course" {
  default = "DevOps Training"
}

#list
variable "courses" {
  default = [
    "Devops",
    "AWS",
    "Python"
  ]
}

#Map
variable "course_details" {
  default = {
    Devops = {
      name = "DevOps"
      timing = "10am"
      duration = 90
    }
    AWS = {
      name = "AWS"
      timing = "11am"
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[1]
}

output "course_details" {
  value = var.course_details.Devops
}

variable "env" {}

output "env" {
  value = var.env
}