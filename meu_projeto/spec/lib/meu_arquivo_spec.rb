require_relative '../lib/ib/calculadora'
RSpec.describe Calculadora do
	it "deve somar dois números corretamente" do
		calculadora = Calculadora.new
		resultado = calculadora.soma(2,3)
		expect(resultado).to eq(5)
	end
end