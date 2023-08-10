class Calculadora
	attr_accessor :soma1, :soma2, :result
	def initialize
		@soma1 = soma1
		@soma2 = soma2
	end

	def conta(soma1, soma2)
		result = soma1 + soma2
		puts result
	end

	def soma(i, i1)
		# code here
	end
end

numero1 = 3
numero2 = 2
resultado = Calculadora.new
puts resultado.conta(numero1, numero2)
