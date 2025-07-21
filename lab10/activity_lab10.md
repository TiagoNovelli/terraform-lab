Laboratório 10 – Movendo recursos
Cenário
Nesse laboratório iremos ver todo o processo para mover um bucket S3 de um state para outro state.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Criar um bucket S3 na AWS.
    • Atividade 02: Renomear bloco.
    • Atividade 03: Mover para outro state
Instruções
Atividade 01:  Criar um bucket S3 na AWS
    1. Crie um diretório chamado lab10 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab10.
    4. Abra o terminal
    5. Execute cd origem para mudar de diretório.
    6. Execute o comando terraform init.
    7. Execute o comando terraform apply –auto-approve
    8. Execute o comando terraform state list para visualizar o recurso já criado.

Atividade 02:  Renomear bloco
    1. Vá no arquivo aws_s3_bucket.tf e altere segunda label de mybucket para novo.
    2. Execute o comando terraform plan para visualizar que o terraform quer remover um bucket para criar um novo.
    3. Execute o comando terraform state mv aws_s3_bucket.mybucket aws_s3_bucket.novo para alterar o state indicando que o recurso criado deverá ser migrado para o novo bloco.
    4. Execute o comando terraform state list para visualizar a alteração.
Atividade 03:  Mover para outro state
    1. Execute o comando cd ../destino para mudar de diretório.
    2. Execute o comando terraform init.
    3. Execute o comando terraform refresh.
    4. Execute o comando terraform state list e veja que não existe recurso criado nesse state.
    5. Execute o comando cd ../origem para voltar ao diretório onde existe um S3 criado.
    6. Execute o comando terraform state mv -state-out=”../destino/terraform.tfstate” aws_s3_bucket.novo aws_s3_bucket.mybucket
    7. Execute o comando cd ../destino para ir ao diretório para onde migramos o S3.
    8. Execute o comando terraform state list para ver que o recurso foi migrado.