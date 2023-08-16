require 'spec_helper'
require 'calculadora'
RSpec.describe Calculadora do
	context " Achando resultado de uma adção" do # usado para dar contexto o meu teste e não ficar perdido
		it "deve somar dois números corretamente" do
			calculadora = Calculadora.new # cria uma novainstância da classe Claculadora para este teste
			resultado = calculadora.conta(3, 2) # chama o metodo 'soma' da instância Calculadora com os valores 2,3 armazenando na variavel resultado
			expect(resultado).to eq(5) #verifica se o a conta está ok
		end
	end
end