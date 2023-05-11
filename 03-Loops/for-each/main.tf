#resource "null_resource" "null" {
#  count =10
#
#}

variable "fruits" {
  default = {
    apple = 10
    orange = 15
    banana =20
    }
}

resource "null_resource" "fruits" {
  count = length(var.fruits)
  provisioner "local-exec" {
    command = "echo Fruit Name - ${var.fruits[count.index]}"
  }
}