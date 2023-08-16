# Course RSpec

  - O RSpec foi criado para facilitar a escrita dos testes automatixados de qualidade, ele possui uma sintaxe bem 
legivel. 
  - Ele foi projetado para garantir que seus codigos funcionem conforme o esperado, ao mesmo tempo fornece boas 
práticas de desenvolvimento.
  - A abordagem do RSpec é baseada em um estilo de escrita de testes chamado **BDD** "Behavior-Driven Development", 
que se cconcentra não apenas em verificar se o código está funcionando, mas também em descrever o comportamento do 
sistema de uma maneira compreensível para as partes interessadas.
  - Os testes escritos com RSpec são organizados em blocos '**describe**', '**context**' e **it**, crinado uma estrutura
hierarquica que ajuda a manter o código de teste bem organizado e modular.
  - Os testes são criados usando "**matchers**", que são métodos que comparam o resultado da execução do código com o 
resultado esperado.

## Sintaxe

- **Describe blocks**
São usados para agrupas conjuntos de testes relacionados a um conceito específico. Eles podem conter outros blocos 
**describe**, bem como os blocos **context** e **it**.

 Exemplo de Describe Block
 ````ruby
RSpec.describe Calculator do
end
````
- **Context blocks**
São usados para agrupar testes que estão em um contexto específico dentro do bloco describe. Eles ajudam a organizar os 
testes de maneira mais granular e das contexto ao que está sendo testado.
````ruby
# Exemplo de Context Block
RSpec.describe Calculator do
	context "when performing addition" do
		# Testes relacionados à adição aqui
	end

	context "when performing subtraction" do
		# Testes relacionados à subtração aqui
	end
end
````
- **it Blocks**
- Os blocos **it** são usados para escrever testes individuais. Cada bloco **it** descreve um cenário específico que 
você deseja testar e contém as asserções que verificam o comportamento esperado
````ruby

# Exemplo de It Block
RSpec.describe Calculator do
	context "when performing addition" do
		it "should add two numbers correctly" do
			# Asserções para a adição aqui
		end
	end

	context "when performing subtraction" do
		it "should subtract two numbers correctly" do
			# Asserções para a subtração aqui
		end
	end
end
````

### O que são matchers? 
Os matchers são métodos fornecidos pelo RSpec que são usados para comparar o resultado do código que está sendo testado 
com o resultado esperado. Eles ajudam a verificar igualdades, tipos, conteúdo de coleções, lançamento de exceções e muito mais.

```` ruby
expect(message).to eq "Hello Hero! 
````
 **Machers de equivalência e identidade**

- Passa se o valor for == ao esperado # **eq** compara apenas os valores.
```` ruby
expect(x).to eql(Y) 

expect(5).to eq(5)  # Passará
expect("hello").to eq("hello")  # Passará

````

- Passa seo valor x.eql?(y) # eql? comparar valores e tipos, mas não necessariamente a mesma identidade de objeto.
```` ruby
expect(x).to eql(y) 

expect(5).to eql(5)  # Passará
expect(5).not_to eql(5.0)  # Passará, pois os tipos são diferentes

````

- Passa se x.equal?(y) equal? compare se os objetos são exatamente o mesmo objeto na memória.

````ruby
- expect(x). to be(y)

a = "hello"
b = a
expect(a).to equal(b)  # Passará, pois a e b são o mesmo objeto

````
 
- **Matchers de Comparação** 

Passa se o valor for maior que x
```` ruby
expect (actual).to be > x
````

Passa se o valor for maor que ou igual a x
```` ruby
expect(actual).to be >= x
````
Passa se o valor dor menor ou igual a x
```` ruby
expect(actual).to be <= x
````

Passa se o valor for menor que x
```` ruby
expect(actual).to be < x
````
Passe se o valor bater com a expressão regular 
```` ruby
expect(actual).to match(/expression/)
```

- **Matchers classe e tipo**

Passa se o objeto for uma instancia de classe esperada
````ruby
expect(actual).to be_an_intace_of(expected)
````

Passa se o tipo do objeto for o esperado (ex isso realmente é uma string)
```` ruby
expect(actual).to be_a(expected)
````

- **Matchers true/false/nil**

Passa enquanto o valor não for false ou nil
```` ruby
expect(actual).to be_truthy
````
Passa quando o valor for == true
```` ruby   
expect(actual).to be true
````
Passa se o valor for false ou nil
```` ruby
expect(actual).to be_falsy

Passa se o valor for nil
```` ruby
expcet(actual).to be_nil
````
Passa o valor se não for nil
```` ruby
expcet(actual).to_not be_nil
````

- **Matchers de erro**

Passa se a chamada levantar um erro 
````ruby
expect{ ... }.to raiser_error
````

Passa se a chamada levantar um erro do tipo ErrorClass
````ruby
expect{ ... }.to raiser_error(ErrorClass)
````
Passa se a chamada levantar um erro de mensagem 'message'
````ruby
expect{ ... }.to raiser_error("message")
````
Passa se a chamada levanta um erro do tipo ErrorClass com a mensagem "message"
````ruby 
expect{ ... }.to raiser_error(ErrorClass, "message")
````

- **Hooks(Before/After)**


