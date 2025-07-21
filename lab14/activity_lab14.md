Laboratório 14 – Usar o dynamic block
Cenário
Nesse laboratório iremos ver todo o processo para criar um security group usando o dynamic block.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar o dynamic block.
Instruções
Atividade 01:  Usar o dynamic block
    1. Crie um diretório chamado lab14 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab14.
    4. Acesse o arquivo provider.tf e adicione o access key e secret key do seu usuário.
    5. Crie um arquivo chamado aws_security_group.tf.
    6. Adicione o seguinte conteúdo no arquivo aws_security_group.tf.

resource "aws_security_group" "demo_sg" {
  name        = "dynamic-sg"

  dynamic "ingress" {
    for_each = var.sg_ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.sg_egress_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

    7. Altere o arquivo terraform.tfvars e adicione o seguinte conteúdo.

sg_ingress_ports = [8080, 80,21, 22, 443]
sg_egress_ports = [8080, 80,21, 22, 443]
    8. Altere o arquivo variable.tf e adicione o seguinte conteúdo.

variable "sg_ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80,21, 22, 443]
}

variable "sg_egress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80,21, 22, 443]
}

    9. Execute o comando terraform init para inicializar o diretório.
    10. Execute o comando terraform apply --auto-approve para provisionar.
    11. Execute o comando terraform destroy --auto-approve para destruir o que foi provisionado.