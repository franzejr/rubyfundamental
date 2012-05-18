#Exemplo de metaprogramacao em ruby.
#A ideia da metaprogramacao eh que codigos podem gerar codigos
#Podemos criar metodos para um determinado objeto em tempo de execucao
#no exemplo abaixo vamos iniciar com um aluno que nao sabe de nada,
#ha um professor que ira ensina-lo, entao, a partir dai o aluno
#ira saber das coisas. 

class Aluno
	#Nao sabe de nada
end

class Professor
	def ensina(aluno)
		def aluno.escreve
			"Sei escrever!"
		end
	end
end

#Ao criarmos um aluno, este aluno nao sabe de nada,
#isto eh, nao existe o metodo escreve
joaozinho = Aluno.new
puts joaozinho.respond_to? :escreve

professor = Professor.new
professor.ensina joaozinho
#Apos termos dito para o professor ensinar o aluno, entao
#agora passa a existir esse metodo no aluno.
puts joaozinho.escreve
