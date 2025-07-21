Laboratório 07 – Outputs
Cenário
Nesse laboratório iremos ver como declarar e usar output.
Objetivos:
Nesse laboratório, você irá:
    • Atividade 01: Usar output.
Instruções
Atividade 01:  Usar variáveis
    1. Crie um diretório chamado lab07 no diretório laboratórios.
    2. Copie os arquivos do zip desse laboratório para dentro do diretório criado.
    3. Abra o VS Code no diretório lab07.
    4. Crie um arquivo chamado outputs.tf.
    5. Adicione o seguinte conteúdo no arquivo outputs.tf.

output "ec2" {
  value = aws_instance.foo
}

output "ec2_private_ip" {
  value = aws_instance.foo.private_ip
}

    6. Execute o comando terraform plan e verifique o planejamento de provisionamento.
    7. Execute o comando terraform apply –auto-approve e veja o resultado do output.
    8. Execute o comando terraform output -raw ec2_private_ip.
    9. Execute o comando terraform destroy –auto-approve para remover o que foi provisionado.