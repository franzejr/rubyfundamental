
#Heranca simples
class Animal
	def come
		"comendo"
	end
end

class Pato < Animal
	def quack
		"Quack!"
	end
end

pato = Pato.new
puts pato.come

#Testando mais duck typing
class PatoNormal
	def faz_quack
		"Quack!"
	end
end

class PatoEstranho
	def faz_quack
		"Queck!"
	end
end

class CriadorDePatos
	def castiga(pato)
		pato.faz_quack
	end
end

pato1 = PatoNormal.new
pato2 = PatoEstranho.new

c = CriadorDePatos.new

#Para o criador de patos, nao interessa que o objeto sera passado como parametro.Para ele basta que o objeto saiba fazer quack.
#Esta eh uma caracteristica da linguagem Ruby chamada Duck Typing
puts c.castiga(pato1)
puts c.castiga(pato2)

