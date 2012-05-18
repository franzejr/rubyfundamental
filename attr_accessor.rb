#Ao usarmos o metodo attr_accessor ele ja gera para nos os metodos para
#poder acessar esse atributo

class Pessoa
	attr_accessor :nome
end


p = Pessoa.new
p.nome = "Joao"
puts p.nome