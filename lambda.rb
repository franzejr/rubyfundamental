somar = lambda {|x,y| x+y}

somar2 = Proc.new {|x,y| x+y} 

somar3 = lambda do |x,y|
   x+y
   puts x+y 
end

puts somar.call(3,2)

puts somar2.call(3,2)

somar3.call(3,2)
