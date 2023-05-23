resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello World ${var.input}"

  }
}

variable "input" {}