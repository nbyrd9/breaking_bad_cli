
class Character 
    attr_accessor :name, :occupation, :status, :appearance, :portrayed

    @@all = []


    def initialize
        @name = name
        @occupation = occupation
        @status = status
        @appearance = appearance
        @portrayed = portrayed
        @@all << self
    end

    def self.all
        @@all
    end

end


