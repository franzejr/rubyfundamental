#Implementacao do Observer, entretanto no Ruby jah a o Modulo Observable
module Observer
	def initialize
		@observers = []
	end

	def add_observer(observer)
		@observers << observer
	end

	def notifica()
		#Notificar os observadores
	end
end

class Restaurante
	include Observer
	def qualifica(nota)
		puts "Restaurante recebeu a nota #{nota}"
		notifica
	end
end

