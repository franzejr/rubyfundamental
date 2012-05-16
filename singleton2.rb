#Exemplo de como fazer uma classe retornar sempre a mesma instancia
#Utilizando o modulo Singleton do ruby


require 'singleton'
class Relatorio
	include Singleton
end

#ambos os relatorios referenciam o mesmo objeto

relatorio1 = Relatorio.instance
relatorio2 = Relatorio.instance

puts relatorio1 == relatorio2