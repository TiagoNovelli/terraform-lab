provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::383033713526:role/TerraformAdministratorAccess"
    session_name = "terraform_session"
  }

}
