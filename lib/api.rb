require 'pry'

class Api
    @@url = "https://www.breakingbadapi.com/api/characters/" 
    
    def self.retrieve_character_info
        reponse = HTTParty.get(@@url)
        # character_hash = {name: response["name"]}
        # Location.new(character_hash)
 
    end  
end

binding.pry