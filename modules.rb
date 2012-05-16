module Comentavel
	def comentarios
		@comentarios ||= []
	end

	def recebe_comentario(comentario)
		self.comentarios << comentario
	end
end

#Agora vou criar uma classe e incluir o modulo acima
class Blog
	include Comentavel
end


blog = Blog.new
blog.recebe_comentario("Muito bom esse modulo!")
puts blog.comentarios