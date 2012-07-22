    #Dashboard
    @numJumps = 4.5
    @allFollowing = 3.3
    @numCities = 7.1

    hash = {"numJumps" => @numJumps,"allFollowing"=>@allFollowing,"numCities"=>@numCities}
    maximum = hash.values.max()
    
    hash.map{ |key,value| hash[key] = value/(maximum ) *100.0 }
    
    puts hash

    # puts "Initial hash: "
    # puts hash
    # 
    # puts "The largest element is: " + hash.key(maximum).to_s + " and your value is: " + maximum.to_s
    # 
    # puts "Updating the elements"    
    # hash.each do |key,value|
    #     hash[key] = value/maximum if hash[key] != maximum
    #     
    # end
    # 
    # puts "New hash: "
    # puts hash
