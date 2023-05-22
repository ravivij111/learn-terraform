resource "null_resource" "null" {
  count =10

}
variable "fruits_1" {
  default = ["apple","banana","orange","banana"]
}

resource "null_resource" "fruits" {
  count = length(var.fruits_1)
  provisioner "local-exec" {
    command = "echo Fruit Name - ${var.fruits_1[count.index]}"
  }
}