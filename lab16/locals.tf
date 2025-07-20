locals {
    env = terraform.workspace == "default" ? "dev" : terraform.workspace
    # se o ambiente for default vi mudar pra dev, se não for vai usar o atual
}