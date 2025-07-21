HashiCorp Configuration Language (HCL)
Indrodução
O HashiCorp Configuration Language ou HCL é um liguagem criada pela Hashicorp, com seu principal objeto de declarar recursos que representam objetivos de infraestrutura.
Um configuração do terraform é um ou mais arquivos escritos em HCL que informa ao Terraform como gerenciar um determinada infraestrutura.
Argumento:
Um argumento atribui valor a um nome.
image_id = "abc123"
A informação antes do sinal de igual (=) é o nome do argumento e a informação após o sinal é o valor do argumento.
O contexto onde o argumento está sendo utilizado é que determinado que tipo de valor são válidos (cada recurso tem um esquema que defini os tipos de argumentos), mas na maioria é aceito expressões que permite que o valor seja específico ou gerado por uma outra configuração.
Exemplo de expressões:
Bloco:
Um bloco é um container que possui um conjunto de informações.
resource "aws_instance"  "example"  { 
  ami  =  "abc123" 

  network_interface  { 
    # ... 
  } 
}
No exemplo acima temos três informações no início do bloco:
resource: É o tipo de bloco (nesse caso resource). Veremos blocos do tipo variables, datasource entre outros.
aws_instance: É um rotulo que indica o recursos que estamos trabalhando, nesse caso é com instância EC2. Dependendo do tipo de bloco essa informação não é necessária.
example: Outro rótulo que indica um nome para diferenciar esse bloco de outros com a mesma finalidade. Dependendo do tipo de bloco essa informação não é necessária.
Em seguida temos uma chave ( { ) que indica o início dos detalhes desse bloco, onde podemos usar argumentos e sub-blocos.
Para finalizar adicionamos mais uma chave ( } )
É muito importante entender a construção dos blocos por que muitas vezes iremos utilizar algumas informações de um bloco dentro de outro bloco. Como:
aws_instance.example.id
Utilizamos a expresão acima para usar o ID da instância que será criada em outra parte do código como no output.
Comentário:
É uma boa pratica de desenvolvimento adicionar comentários no código para que a atualização e manutenção seja executada de forma simple por outras pessoas.
Para adicionar um comentário podemos usar:
    • # Inicia um comentário de uma linha
    • // Também utilizado para comentar uma linha
    • /* e */ são usados para indicar o início e termino de um comentário com várias linhas