
data "aws_security_group" "selected" {

  name = "Ravi_Secuity_All"
}

output "security_group" {
  value = data.aws_security_group.selected
}