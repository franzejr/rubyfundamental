#Criando uma lambda function
somar = lambda {|x,y| x+y}

#Criando com o Proc.
somar2 = Proc.new {|x,y| x+y} 

#Mandandoa imprimir, entao a convencao eh de que eh melhor usar do/end ao inves de { }
somar3 = lambda do |x,y|
   x+y
   puts x+y 
end

puts somar.call(3,2)

puts somar2.call(3,2)

somar3.call(3,2)
