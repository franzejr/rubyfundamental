require 'open-uri'

open('image.jpg', 'wb') do |file|
  file << open('http://maps.googleapis.com/maps/api/staticmap?center=Berkeley,CA&zoom=14&size=400x400&sensor=false').read
end
