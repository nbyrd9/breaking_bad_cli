require_relative('../lib/api')


class Character 
    attr_accessor :birthday, :occupation, :status, :appearance, :portrayed

    @@all = []

    def initialize(char_info)
        @birthday = char_info["birthday"]
        @occupation = char_info["occupation"]
        @status = char_info["status"]
        @appearance = char_info["appearance"]
        @portrayed = char_info["portrayed"]
        @@all << self
    end
    def self.all
        @@all
    end

    def self.find_by_name
        self.all.find{|character| character.name == name}
    end

    def self.create
        @@all << self.new
    end
end


         # hash.each do |key, value|
        #     self.send("#{key}=" , value)
        # end
# Character.find_by_name