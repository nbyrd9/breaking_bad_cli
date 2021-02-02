require 'pry'
require 'httparty'

require_relative('../lib/api')
require_relative('../lib/cli')
require_relative('../lib/Character')

url = "https://www.breakingbadapi.com/api/characters/1" 

response = HTTParty.get(url) 

# binding.pry



# request = URI.parse(url)
# response = Net::HTTP.get_response(request)




