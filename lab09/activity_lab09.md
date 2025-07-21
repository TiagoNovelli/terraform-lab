Laboratório 09 – Importe
Cenário
Nesse laboratório iremos ver todo o processo para importar um bucket S3 da AWS.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Criar um bucket S3 na AWS.
    • Atividade 02: Importar o S3.
Instruções
Atividade 01:  Criar um bucket S3 na AWS
    1. Acesse o portal da AWS
    2. Crie um bucket com um nome que seja único entre todos os clientes da AWS.

Atividade 02:  Importar S3
    1. Crie um diretório chamado lab09 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab09.
    4. Alterei o arquivo aws_s3_bucket.tf adicionando o nome do bucket que foi criado na atividade anterior.
    5. Execute o comando terraform init.
    6. Execute o comando terraform plan e veja que o terraform está querendo criar um novo bucket.
    7. Execute o comando terraform import aws_s3_bucket.mybucket NOME_DO_BUCKET. No lugar de NOME_DO_BUCKET coloque o nome do bucket criado na atividade anterior.
    8. Execute o comando terraform plan e veja que não será criado um novo bucket e sim pequenas alterações.
    9. Execute o comando terraform destroy –auto-approve para remover o bucket.
