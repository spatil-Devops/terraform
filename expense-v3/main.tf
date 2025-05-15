module "app" {
  for_each = var.components
  source = "./app"

  ami = var.ami
  name = each.key
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids

}


