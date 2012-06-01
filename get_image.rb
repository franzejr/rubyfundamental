#Get Image from an Dynamic URL
require 'net/http'

uri = URI('http://maps.googleapis.com/maps/api/staticmap?')
params = { :center => 'Berkeley,CA', :zoom => 14, :size => "400x400", :sensor => false }
uri.query = URI.encode_www_form(params)

res = Net::HTTP.get_response(uri)
puts "success" if res.is_a?(Net::HTTPSuccess)

open('image2222.png', 'wb') do |file|
  file << res.body
end