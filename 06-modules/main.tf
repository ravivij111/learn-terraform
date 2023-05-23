module "sample" {
  source = "./module"
  input = "xyz"
  # the above input is a variable which should be declared in another file. We are passing this as input to the module
}
/*
module "dummy" {
  source = "./dummy"
  input = "xyz"
}
// Refer one module in anotehr module
module "sample1" {
  source = "./module"
  input = module.dummy.dummy_op
} */