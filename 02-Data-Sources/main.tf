
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

data "aws_security_groups" "all_security_group" {}
output "all_security_groups" {
  value =  data.aws_security_groups.all_security_group
}