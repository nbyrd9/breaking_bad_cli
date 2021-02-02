require 'pry'

class Api 
    # attr_accessor :name, :occupation, :status, :appearance, :portrayed
    
    @@url = "https://www.breakingbadapi.com/api/characters"   


    def self.get_character_info
        response = HTTParty.get(@@url).slice(0,5)
        response.each do |person|
            Character.new(name: info["name"], occupation: info["occupation"], status: info["status"], appearance: info["appearance"], portrayed: info["portrayed"])
            
        end
        
    end

end

Api.get_character_info

