#Simulacao de uma classe abstrata
class Relatorio
	def imprime
		imprime_cabecalho
		imprime_conteudo
	end
end

class HTMLRelatorio < Relatorio
	def imprime_cabecalho
		puts "<html>"
	end

	def imprime_conteudo
		puts "Dados do relatorio"
		puts "</html>"
	end
end

class TextoRelatorio < Relatorio
	def imprime_cabecalho
		puts "**"
	end

	def imprime_conteudo
		puts "Dados do relatorio"
	end
end


#O exemplo abaixo ira dar uma exception! Estamos chamando um metodo de uma classe 'abstrata'
#relatorio1 = Relatorio.new
#puts relatorio1.imprime

relatorio  = HTMLRelatorio.new
relatorio.imprime

relatorio = TextoRelatorio.new
relatorio.imprime