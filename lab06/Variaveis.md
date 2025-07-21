Variáveis
Indrodução
O HCL possui alguns blocos para requisitar ou publicar valores.
A variável é utilizada para que possamos solicitar informações para o usuário do código. Com isso temos um código mais dinâmico e reutilizável.

Definindo a variável:
Para declarar uma variável no terraform utilizamos um bloco do tipo variable juntamente com um rótulo.
variable "image_id" {
  type = string
}
O rótulo é utilizado para dar nome à variável e deve ser único dentro do contexto que foi aplicado.

Argumento:
No bloco variable podemo usar os seguinte arquimentos
    • default: Adiciona um valor padrão e defini a variável como opcional
    • type: Especifica o tipo de valor aceito
        ◦ string: Aceita qualquer valor 
        ◦ number: Aceita somente números
        ◦ bool: Aceito somente true ou false
        ◦ list(): Aceita uma lista
        ◦ map(): Aceita um mapa
        ◦ object(): Aceita atributos e valores
    • description: Adiciona informações sobre a variável para que a mesma fique melhor documentada
    • validation: Um bloco que podemos definir regras de validação
    • sensitive: Evita com que dados sensíveis sejam exibidos no log
    • nullable: Especifica se a variável pode contar o valor de null

Usando a variável:
Temos algumas formas de usar a variável.
1º Forma de uso
resource "some_resource" "a" {
  name    = var.nome_da_variavel_a
  address = var. nome_da_variavel_a
}
No exemplo acima utilizar a palavra var, um ponto como separador e no final o nome da variável.
Damos preferencia para esse uso, pois deixa o código mais limpo
2º Forma de uso
resource "some_resource" "a" {
  name    = “ Algum texto antes ${var.nome_da_variavel_a} ou depois da variável”
}
Nesse outro exemplo utilizamos $ e chaves ( { e } ) junto da indicação da variável.
Utilizamos dessa forma quando precisamos que a variável seja usada junto com alguma string (texto, caracteres expeciais ou números).
3º Forma de uso
resource "some_resource" "a" {
  name    = format(“Hello, %s!”, var. nome_da_variavel_a
}
Esse é outra forma de utilizar uma variável com uma string, so que estamos usando uma função.
Com a função format temos uma estrutura propria onde %s é substituido pelo valor da variável.
Podemos também as funções concat e merge.

