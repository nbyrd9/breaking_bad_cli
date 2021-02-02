require 'pry'
require_relative ('../lib/Character')

class Api 
    attr_accessor :name, :occupation, :status, :appearance, :portrayed
    
  

    def self.get_character_info(selection)
        url = "https://www.breakingbadapi.com/api/characters"   
        response = HTTParty.get(url).slice(0,5)
        response.each do |person|
            info_hash = {name: person["name"], occupation: person["occupation"], status: person["status"], appearance: person["appearance"], portrayed: person["portrayed"]}
            Character.new(info_hash)
            binding.pry
        end
        
    end

end

Api.get_character_info
# Character.new

