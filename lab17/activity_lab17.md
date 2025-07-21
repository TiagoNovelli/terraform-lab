Laboratório 17 – Validação
Cenário
Nesse laboratório iremos ver como realizar validações.

Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar validação de entreda
    • Atividade 02: Usar precondition
    • Atividade 03: Usar postcondition
Instruções
Atividade 01:  Usar validação de entrada
    1. Crie um diretório chamado lab17 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab17.
    4. Crie um arquivo chamado aws_instance.tf e adicione o seguinte conteúdo.

resource "aws_instance" "foo" {
  ami           = var.image_id
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags = {
    "Name" = var.ec2_name
    "Environment" = "MyEnv"
  }
}

    5. Crie um arquivo chamado variables.tf e adicione o seguinte conteúdo.

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.image_id))
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

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

    6. Verifique que a variável image_id possui uma validação.
    7. Acesse o arquivo provider.tf e adicione o access key e secret key do seu usuário.
    8. Execute o comando terraform init.
    9. Execute o comando terraform apply --auto-approve.
    10. Depois de ser executado com sucesso, execute o comando terraform destroy --auto-approve.

Atividade 02:  Usar precondition
    1. Acesse o arquivo aws_instance.tf e adicione o seguinte conteúdo dentro do bloco que cria a instância.

lifecycle {
    # The AMI ID must refer to an AMI that contains an operating system
    # for the `x86_64` architecture.
    precondition {
      condition     = data.aws_ami.example.architecture == "x86_64"
      error_message = "The selected AMI must be for the x86_64 architecture."
    }

 }

    2. Verifique que o bloco lifecycle possui um bloco precondition com uma validação da arquitetura da imagem utilizada na criação da instância.
    3. Execute o comando terraform apply --auto-approve.
    4. Depois de ser executado com sucesso, execute o comando terraform destroy --auto-approve.

Atividade 02:  Usar postcondition
    1. Acesse o arquivo aws_instance.tf e adicione o seguinte conteúdo dentro do bloco lifecycle.

The EC2 instance must be allocated a public DNS hostname.
    postcondition {
      condition     = self.public_ip != ""
      error_message = "EC2 instance must be in a VPC that has public DNS hostnames enabled."
    }

    2. Verifique que o bloco lifecycle possui um bloco postcondition com uma validação do dns público da instância.
    3. Execute o comando terraform apply --auto-approve.
    4. Depois de ser executado com sucesso, execute o comando terraform destroy --auto-approve.

