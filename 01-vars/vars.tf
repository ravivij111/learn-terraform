variable "sample_string"{
  default = "Hello World"
}


variable "sample_number" {

  default = 100
}

variable "sample_boolean" {
  value = true
}
# We have list variable type, Meaning single variable can hold multiple data types values
variable "sample_list" {
  default = [
    100,
    "hello",
    true,
    123
  ]
}
## Data  type inside the list does not matter in terraform. We can access by the name of the variable rather than index
variable "sample_dict" {
  default = {
    number1  = 100
    string1  = "Hello"
    number2  = true
    boolean1 = true

  }
}
 # The above one is the most prefered to use