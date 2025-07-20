module "network" {
  source = "./modules/network"
  network_prefix = lookup(var.network_prefix, local.env)
  # lokup, dentro da variavel network prefix, vai procurar o campo dev
  # o campo dev pode estar em terraform.tfvars, mas nesse caso vai pegar a default q está na variavel
  # ele vai procurar o valor q esta em local.env dentro de var.network_prefix
  region = lookup(var.aws_region, local.env)
  env = local.env
}

module "instance" {
  source = "./modules/instance"
  instance_name = "terraform-lab"
  ami = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]
  subnet_id   = module.network.aws_subnet_id
  network_prefix = lookup(var.network_prefix, local.env)
  env = local.env
}