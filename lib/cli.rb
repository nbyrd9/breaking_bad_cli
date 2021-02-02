class Cli

    def greeting
        puts "----------"
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        puts "----------"
        sub_heading
        character_options
    end

    def sub_heading
        puts "Please choose a character to retrieve more information."
        input = gets.chomp
    end
    
    def character_options
        puts "1. Walter White"
        puts "2. Jesse Pinkman"
        puts "3. Skylar White"
        puts "4. Walter White Jr."
        puts "5. Hank Schrader"
    end

    def user_input(char)
        input = gets.strip
        if input == "1"
            puts "The #{character.new} you selected is #{character.name}."
        elsif input == "2"

        elsif input == "3"

        elsif input == "4"

        elsif input =="5"

        end
    end
end
