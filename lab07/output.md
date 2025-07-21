Output
Indrodução
O HCL possui alguns blocos para requisitar ou publicar valores.
O output é o contrário da variável ele é utilizado para publicar informações seja para algum outro bloco ou para o usuário que está usando o código dependendo do contexto que foi aplicado.

Definindo o output:
Para declarar um output no terraform utilizamos um bloco do tipo output juntamente com um rótulo.
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}
O rótulo é utilizado para dar nome ao output e deve ser único dentro do contexto que foi aplicado.
O value contém uma expresão que coleta o valor do IP privado do recurso server após a sua criação e entregar esse valor para o output em questão.

Argumento:
No bloco variable podemo usar os seguinte arquimentos
    • value: Expressão que dará valor ao output.
    • description: Adiciona informações para que o mesmo fique melhor documentado.
    • precondition: Podemos aplicar uma validação antes que o output seja analisado pelo terraform.
    • sensitive: Evita com que dados sensíveis sejam exibidos no log
    • depends_on: Informa que o output depende de outro recursos, exemplo da criação de uma instância.

Comando:
Quando estamos utilizando o output no contexto do diretório de trabalho podemos utilizar a opção de linha de comando para que seja exibido os valores de output.
A sintaxe é terraform output [options] [name]
O utilizar somente o comando terraform output será exibido o valor de todos os outputs configurados.
Se adicionarmos o nome de um output (terraform output instance_ip_addr) será exibido somente o valor do output informado.
Se adicionarmos também o parâmetro -raw (terraform output instance_ip_addr -raw) será exibido somente o valor do output informado e sem as aspas, indicado para quando queremos utilizar o valor do output em outro comendo de nosso CI/CD.
Também temos os seguintes parâmetros:
    • -json: A saída será exibida em json
    • -no-color: A saída não será colorida
    • -state-path: Poodemos indicar um arquivo de state. O arquivo padrão é o terraform.tfstate 