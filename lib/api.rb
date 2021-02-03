require 'pry'
require_relative ('../lib/Character')

class Api 
    attr_accessor :name, :birthday, :occupation, :status, :appearance, :portrayed
    
    def self.get_character_info
        url = "https://www.breakingbadapi.com/api/characters"   
        response = HTTParty.get(url)
        response.each do |person|
            info_hash = {name: person["name"], birthday: person["birthday"], occupation: person["occupation"], status: person["status"], appearance: person["appearance"], portrayed: person["portrayed"]}
            Character.new(info_hash)
        end
    end

    def self.get_character_quote
        url = "https://www.breakingbadapi.com/api/quotes"
        response = HTTParty.get(url)
        binding.pry
        response.each do |quote|
            quote_hash = {author: quote["author"], quote: quote["quote"] }
            Quote.new(quote.hash)
           
        end
    end

end
Api.get_character_quote



