
data "aws_security_group" "selected" {
  ## id = var.security_group_id
  name = "Ravi_Secuity_All"
}

output "security_group" {
  value = data.aws_security_group.selected
}