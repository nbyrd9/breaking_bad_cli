require 'pry'
require_relative ('../lib/Character')

class Api 
    attr_accessor :birthday, :occupation, :status, :appearance, :portrayed
    
    def self.get_character_info(name)
        url = "https://www.breakingbadapi.com/api/characters"   
        response = HTTParty.get(url)
        response.each do |person|
            info_hash = {birthday: person["birthday"], occupation: person["occupation"], status: person["status"], appearance: person["appearance"], portrayed: person["portrayed"]}
            Character.new(info_hash)
        end
    end
end




