require 'pry'
require 'httparty'

require_relative('../lib/api')
require_relative('../lib/cli')
require_relative('../lib/location')

url = "https://www.breakingbadapi.com/api/characters/" 

response = HTTParty.get(url) 


# request = URI.parse(url)
# response = Net::HTTP.get_response(request)




