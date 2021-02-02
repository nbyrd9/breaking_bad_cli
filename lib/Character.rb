
class Character 
    attr_accessor :name, :occupation, :status, :appearance, :portrayed



    def initialize(hash)

        hash.each do |key, value|
            self.send("#{key}=" , value)
        end
    end
end


# @name = name
#         @occupation = occupation
#         @status = status
#         @appearance = appearance
#         @portrayed = portrayed
#         @@all << self