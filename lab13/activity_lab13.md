Laboratório 13 – Locals
Cenário
Nesse laboratório iremos ver o uso do locals.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar o for_each.
Instruções
Atividade 01:  Usar o for_each
    1. Crie um diretório chamado lab13 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab13
    4. Acesse o arquivo provider.tf e adicione o access key e secret key do seu usuário.
    5. Crie o arquivo aws_s3_bucket.tf e adicione a seguinte informação:

resource "aws_s3_bucket" "mybucket01" {
  bucket = "${local.prefix_bucket}-mybucket-01"
  tags = {
    "environment" = "dev"
  }
}

resource "aws_s3_bucket" "mybucket02" {
  bucket = "${local.prefix_bucket}-mybucket-02"
  tags = {
    "environment" = "dev"
  }
}

    6. Crie um arquivo chamado locals.tf e adicione a seguinte informação:

locals { 
  prefix_bucket = "${var.company}-${var.env}" 
}

    7. Abra o terminal
    8. Execute o comando terraform init.
    9. Execute o comando terraform apply --auto-approve.
    10. Observe os recursos provisionados.
    11. Execute o comando terraform destroy --auto-approve.