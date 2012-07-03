    #Dashboard
    @numJumps = 4.5
    @allFollowing = 3.3
    @numCities = 7.1

    hash = {"numJumps" => @numJumps,"allFollowing"=>@allFollowing,"numCities"=>@numCities}
    maximum = hash.values.max()

    puts "Hash Inicial: "
    puts hash

    puts "O maior elemento eh: " + hash.key(maximum).to_s

    puts "Retirando o maior elemento do hash"

    hash_antigo = {}

    key_max =  hash.key(maximum)

    puts "Key ox max element" + key_max.to_s

    hash_antigo[key_max] = maximum

    puts "hash antigo:"
    puts hash_antigo

    hash.delete_if{ |key,value| value == maximum }

    puts "Apos tirar o maior elemento"
    puts hash

    #Dividindo todos os elementos pelo maior
    hash.each { |key,value|  hash[key] = value/maximum  }
    
    
    puts "Imprimindo apos dividir"
    puts hash
    
    puts "Adicionando agora o elemento maior"
    
    hash.merge!(hash_antigo)
    
    puts "Adicionando o elemento cujo maior elemento"
    puts hash