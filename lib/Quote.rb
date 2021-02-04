require_relative('../lib/api')

class Quote
    attr_accessor :author, :quote
   
    @@all = []

    def initialize(hash)
         hash.each do |key, value|
            self.send("#{key}=" , value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(quote)
        self.all.find{|info| info.quote == quote}
    end       
end