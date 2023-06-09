
#data "aws_security_group" "selected" {
#  ## id = var.security_group_id
#  name = "Ravi_Secuity_All"
#}

#data "aws_security_group" "selected" {
#  ## id = var.security_group_id
#  name = "Ravi_Secuity_All"
#}



#output "security_group_id" {
#  value =  data.aws_security_group.selected.id
#}

// Get all Security Groups and print them all
data "aws_security_groups" "all_security_group" {}

output "all_security_groups" {
  value =  data.aws_security_groups.all_security_group
}
// Retrieve and print the Security Groups one by one
data "aws_security_group" "single" {
  count = length(data.aws_security_groups.all_security_group.ids)
  id = data.aws_security_groups.all_security_group.ids[count.index]
}
output "single" {
  value = data.aws_security_group.single
}
/*
output "all" {
  value = data.aws_security_groups.all_security_group
} */