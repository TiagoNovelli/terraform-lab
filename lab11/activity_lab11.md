Laboratório 11 – Count
Cenário
Nesse laboratório iremos ver o uso do count para criar vários buckets S3 na AWS.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar o count.
Instruções
Atividade 01:  Usar o count
    1. Crie um diretório chamado lab11 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab11.
    4. Abra o terminal
    5. Execute o comando terraform init.
    6. Execute o comando terraform apply --auto-approve.
    7. Execute o comando terraform state list e observe o resultado.
    8. Vá no arquivo aws_s3_bucket.tf e adicione a seguinte informação:

count = 2

    9. Em bucket altere para um nome que seja único e no final adicione -${count.index}.
    10. Execute o comando terraform apply --auto-approve.
    11. Execute o comando terraform state list e observe o resultado.
    12. Execute o comando terraform destroy --auto-approve.