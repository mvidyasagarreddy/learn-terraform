output "sample" {
  value = "Hello World"
}

#Any string in terraform need to quoted in double quotes only
#Single quotes are not supported in terraform

output "sample1" {
  value = 100
}

#Numbers and Booleans(true , false) does not require quotes

output "serverexists" {
  value = true
}