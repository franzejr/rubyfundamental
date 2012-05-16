#Exemplo de como fazer uma classe retornar sempre a mesma instancia
#Essa forma eh sem utilizar o modulo Singleton do ruby
class Relatorio
	@@instance = Relatorio.new
	
	def self.instance
		return @@instance
	end

	private_class_method :new
end

#ambos os relatorios referenciam o mesmo objeto

relatorio1 = Relatorio.instance
relatorio2 = Relatorio.instance

puts relatorio1 == relatorio2