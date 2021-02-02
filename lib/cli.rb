class Cli

    def greeting
        puts "----------"
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        puts "----------"
        self.sub_heading
        character_options
    end

    def sub_heading
        puts "Please choose a character to retrieve more information."
        input = gets.chomp
        Api.get_character_info(input)
    end
    
    def character_options
        puts "1. Walter White"
        puts "2. Jesse Pinkman"
        puts "3. Skylar White"
        puts "4. Walter White Jr."
        puts "5. Hank Schrader"
    end

    def user_input
        input = gets.strip
        if input == "1"
            puts "The character you selected is Walter White."
        elsif input == "2"
            puts "The #{character.new} you selected is #{character.name}."
        elsif input == "3"
            puts "The #{character.new} you selected is #{character.name}."
        elsif input == "4"
            puts "The #{character.new} you selected is #{character.name}."
        elsif input =="5"
            puts "The #{character.new} you selected is #{character.name}."
        end

    end

    def character_info(character)
        puts "Name: #{character.name}"
        puts "Occupations: #{character.occupation}"
        puts "Status: #{character.status}"
        puts "Appearance: #{character.appearance}"
        puts "Portrayed By: #{character.portrayed}"
    end 
end
