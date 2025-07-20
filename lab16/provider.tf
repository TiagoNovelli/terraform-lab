provider "aws" {
  region     = lookup(var.aws_region, local.env)
  profile = "srv.terraform"
}