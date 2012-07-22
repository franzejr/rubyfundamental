#Exemplos de como poderiamos passar parametros para metodos no ruby

#Chamada mais comum de um metodo
def method(a,b)
   p a,b 
end

#Chamada passando valores padroes
def method2(a=2,b=3)
    p a,b
end

#Chamada passando um array de elementos
def method3(*args)
    p args[0],args[1]
end

def method4(a,b,*args)
    p a,b, args[0]
end

def method5(a,b,*args)
    p a,b
    p args
end

method(2,3)
method2()
method3(2,3)
method4(2,3,5)
method5(2,3,5,6,7)
