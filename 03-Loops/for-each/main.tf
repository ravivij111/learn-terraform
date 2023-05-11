#resource "null_resource" "null" {
#  count =10
#
#}
# *************** Start of Count *************************
#variable "fruits" {
#  default = {
#    "apple", "orange", "banana"
#  }
#}
#
#resource "null_resource" "fruits" {
#  count = length(var.fruits)
#  provisioner "local-exec" {
#    command = "echo Fruit Name - ${var.fruits[count.index]}"
#  }
#}
# *************** End of Count *************************


# *************** Start of for_each *************************
variable "fruits" {
  default = {
    apple = 10
    orange = 15
    banana =20
    }
}
resource "null_resource" "fruits" {
  for_each = var.fruits
  provisioner "local-exec" {
    command = "echo Fruit Name - $(each.key) - (each.value)"
  }
}

# *************** End of for_each *************************