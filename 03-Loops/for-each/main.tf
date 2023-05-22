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
/*
variable "instances" {
  type = set(string)
  default = ["instance1", "instance2", "instance3"]
}
*/

# *************** Start of for_each for *************************
 # for each for list
variable "fruits1" {
  default = ["apple", "orange", "banana"]
  type =set(string)
}

resource "null_resource" "fruits1" {
  for_each = var.fruits1
  //provisioner "local-exec" {
  user_data = <<-EOT
      #!/bin/bash
    echo Fruit Name - each.key - each.value"
EOT
 // }
}


#for_each for the objects
/*

resource "null_resource" "fruits" {
  for_each = var.fruits
 provisioner "local-exec" {
     command = "echo **** Key Name - ${each.key} ************* \n  echo Fruit Name -  ${each.value["name"]} \n  echo Fruit count -  ${each.value["count"]} \n  echo Fruit color -  ${each.value["color"]} "
  }
}


// for_each for set
variable "vegetables" {
  default = ["carrot", "capsicum"]

}
resource "null_resource" "fruits" {
  for_each = toset(var.vegetables)
  provisioner "local-exec" {
    command = "echo Fruit Value - ${each.value} "
  }
}
# *************** End of for_each *************************
*/