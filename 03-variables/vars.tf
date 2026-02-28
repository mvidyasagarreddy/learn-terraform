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

# Variable Data types
# 1: string
# 2: number
# 3: boolean

# #Variable Types
# 1.plain key, value
# 2. list
# 3. dictionary

# #InTerraform
# 1: plain
# 2: list
# 3: map

variable "plain" {
    default = "Devops Tranining"
}

#List
variable "courses" {
  default = [
    "Devops",
    "AWS",
    "Python"
  ]
}

#Map
variable "course-details" {
  default = {
    Devops = {
        name = "Devops"
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

output "plain" {
  value = var.plain
}

output "courses" {
  value = var.courses[2]
}

output "course-details" {
  value = var.course-details["Devops"]
}

variable "env" {
  
}

output "env" {
  value = var.env
}