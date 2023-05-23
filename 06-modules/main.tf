module "sample" {
  source = "./module"
  input = "abcdef"
  # the above input is a variable which should be declared in another file. We are passing this as input to the module
}

module "dummy" {
  source = "./dummy"

}
// Refer one module in anotehr module
module "sample1" {
  source = "./module"
  input = module.dummy.dummy_op
}
