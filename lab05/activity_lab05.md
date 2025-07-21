Laboratório 05 – Meu primeiro recurso
Cenário
Nesse laboratório iremos ver todo o processo para criar um bucket S3 na AWS.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Criar um bucket S3 na AWS.
Instruções
Atividade 01:  Criar um bucket S3 na AWS
    1. Crie um diretório chamado lab05 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab05.
    4. Crie um arquivo chamado aws_s3_bucket.tf.
    5. Adicione o seguinte conteúdo no arquivo aws_s3_bucket.tf.

resource "aws_s3_bucket" "mybucket" {
  # Altere mybucket pelo nome do seu bucket e o mesmo nÃ£o pode ser igual a nenhum bucket de outros clientes da AWS
  bucket = "mybucket"
  tags = {
    "environment" = "dev"
  }
}

    6. Execute o comando terraform init para inicializar o diretório.
    7. Execute o comando terraform validate para verificar se o seu código está escrito corretamente.
    8. Execute o comando terraform fmt para corrigir o alinhado do seu código.
    9. Execute o comando terraform plan para verificar o planejamento do provisionamento.
    10. Exeute o comando terraform apply, verifique se o planejamento de provisionamento está correto em seguida digite yes (caso esteja de acordo com o que será provisionado) e dê enter.
    11. Acesso o portal da AWS e verifique se foi criado corretamente.
    12. Execute o comando terraform destroy para remover tudo que foi provisionado.