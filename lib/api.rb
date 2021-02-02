require 'pry'

class Api 
    attr_accessor :name, :occupation, :status, :appearance, :portrayed



    def self.character_info
        url = "https://www.breakingbadapi.com/api/characters" 
        response = HTTParty.get(url)
        response.each do |person, character_hash|
            if person == "Walter White"
                character_hash.each do |attribute, data|
            
            # Character.new(name: data["name"], occupation: data["occupation"], status: ["status"], appearance: data["appearance"], portrayed: data["portrayed"])
                end
            end
      
        end

    end
   
end

# character_hash = {name: response[0]["name"], occupation: response[0]["occupation"], status: response[0]["status"], appearance: response[0]["appearance"], portrayed: response[0]["portrayed"]}
      