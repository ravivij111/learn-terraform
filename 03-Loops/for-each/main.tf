/*resource "null_resource" "null" {
  count =10

}
 *************** Start of Count *************************
variable "fruits" {
  default = {
    "apple", "orange", "banana"
  }
}

resource "null_resource" "fruits" {
  count = length(var.fruits)
  provisioner "local-exec" {
    command = "echo Fruit Name - ${var.fruits[count.index]}"
  }
}
 *************** End of Count **************************/


# *************** Start of for_each *************************
/*variable "fruits1" {
  default = {
    "apple", "orange", "banana"
    }
}
resource "null_resource" "fruits1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo Fruit Name - $(each.key) - (each.value)"
  }
}*/
/*
variable "fruits" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    orange = {
      name = "orange"
      count = 15
    }
    banana = {
      name = "banana"
      count = 20
    }
  }

}
resource "null_resource" "fruits" {
  for_each = var.fruits
  provisioner "local-exec" {
    command = "echo Fruit Name - $(each.key) - $(each.value['count'])"
  }
}
*/
# *************** End of for_each *************************