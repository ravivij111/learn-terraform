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

variable "sample2" {

  default = {
     xyz = 100
     abc = 200
  }
}
// If a1 key does not find then print the value as dummy bu lookup
output "sample2" {
  value = lookup(var.sample2, "a1", "dummy")
}