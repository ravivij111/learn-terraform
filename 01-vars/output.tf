output "sample_string" {
  value = var.sample_string
}
# Retrieving the variable in double quotes
output "sample_string1" {
  value = "Sample string is ${var.sample_string}"
}

## Values from List
# Printing 2nd value from the list
output "sample_list" {
  value = var.sample_list[1]
}

#Print number1 in sample_dict
output "sample_dict_num1" {
  value =  var.sample_dict.number1
}

#Print boolean in sample_dict
output "sample_dict_boolean" {
  value =  var.sample_dict.boolean1
}