Laboratório 06 – Variáveis
Cenário
Nesse laboratório iremos ver como declarar e usar variáveis.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar variáveis.
Instruções
Atividade 01:  Usar variáveis
    1. Crie um diretório chamado lab06 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab06.
    4. Crie um arquivo chamado variables.tf.
    5. Adicione o seguinte conteúdo no arquivo variables.tf.

variable "ec2_name" {
  description = "Nome da instância do EC2"
  type = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type = string
}

variable "subnet_name" {
  description = "Nome da subnet"
  type = string
}

variable "env" {
  description = "Ambiente que será provisionado"
  type = string
}

    6. Crie um arquivo chamado terraform.tfvars.
    7. Adicione o seguinte conteúdo no arquivo terraform.tfvars.

ec2_name = "ENTER_VALUE"
subnet_name = "ENTER_VALUE"
vpc_name = "ENTER_VALUE"

Altere ENTER_VALUE por um valor que conrresponda ao nome da variável.

    8. Acesse os arquivos aws_instance.tf, aws_network_interface.tf, aws_subnet.tf e aws_vpc.tf. Faça a seguinte alteração:

De
"Environment" = "MyEnv"

Para
"Environment" = var.env

    9. Execute o comando terraform init.
    10. Execute o comando terraform plan -var=”env=dev”.