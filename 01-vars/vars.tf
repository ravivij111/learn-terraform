variable "sample_string"{
  default = "Hello World"
}

output "sample_string" {
  value = var.sample_string
}
# Retrieving the variable in double quotes
output "sample_string1" {
  value = "Sample string is ${var.sample_string}"
}