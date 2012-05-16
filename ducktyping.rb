class Franquia
	def info 
		puts "Restaurante faz parte da franquia"
	end
end

#Criando um restaurante que herda de franquia
class Restaurante < Franquia
end

#Testando apenas a heranca
restaurante = Restaurante.new
restaurante.info

#Agora vou chamar o metodo da superclasse
class Restaurante < Franquia
	def info
		puts "Chamar o metodo da superclasse:"
		super
		puts "Restaurante franquia"
	end
end


restaurante = Restaurante.new
restaurante.info