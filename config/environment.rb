require 'pry'
# require 'net/http'
# require 'open-uri'
# require 'json'

require 'httparty'

url = "https://www.breakingbadapi.com/api/characters/12"

response = HTTParty.get(url) 

binding.pry

# request = URI.parse(url)
# response = Net::HTTP.get_response(request)




