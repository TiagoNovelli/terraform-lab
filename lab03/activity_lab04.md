Laboratório 04 – Inicialização
Cenário
Nesse laboratório iremos ver os passos necessários para preperar o diretório de trabalho para a utilização dos arquivos pelo terraform.

Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Executando o init
    • Atividade 02: Configurar variáveis
    • Atividade 03: Criar arquivo terraform.tf
    • Atividade 04: Criar arquivo provider.tf
    • Atividade 05: Criar role (opcional)
    • Atividade 06: Reconfigurar o provider (opcional)

Instruções
Atividade 01:  Executando o init
    1. Vamos aproveitar os arquivos criados no laboratório 03.
    2. Abra o VS Code no diretório lab03.
    3. No menu clique em Terminal e depois em New Terminal.



    4. No terminal que será aberto digite terraform init e de enter.
    5. Preste atenção nos seguintes itens:
    • Tempo que demora para finalizar o comando.
    • Diretórios que são criado no diretório.
    • Atividades executadas no item Initializing provider plugins.

    6. Execute novamente o comando terraform init.
    7. Preste atenção nos seguintes itens.
    • O tempo para finalizar o comando foi mais rápido
    • As atividades executadas no item Initializing provider plugins mudou pois já tinham sido executadas.