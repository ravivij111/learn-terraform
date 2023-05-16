module "secGroup" {
  source = "./security_group"
}

module "ec2" {
  source = "./ec2"
  sg_id = module.secGroup.sg_id_op
}

#the data is passing through the modules via root module