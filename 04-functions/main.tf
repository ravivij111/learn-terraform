variable "sample" {

  default = "abcd"
}

output "sample" {
  value = upper(var.sample)
}


  variable "sample1" {

    default = ["abcd", "xyz"]
  }

## print the 1st value with the functions

output "sample1" {
  value = element(var.sample1,0)
}
