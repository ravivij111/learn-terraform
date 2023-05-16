resource "null_resourcse" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello World ${var.input}"

  }
}

variable "input" {}