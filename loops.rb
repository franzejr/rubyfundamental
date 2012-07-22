#Loop infinito
#loop { p "Hello"}

i=0
loop do
  i+=1
  print "#{i} "
  break if i==10
end

[1,2,3,4,5,6,7,8,9,10].each {|value| print "#{value} "}

(1..20).each { |x| p x}