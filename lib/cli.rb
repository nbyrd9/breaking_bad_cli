class Cli
    def greeting
        puts "~~~~~~~~~~~~~~~".colorize(:green)
        puts "Welcome to the Breaking Bad Experience. Tread Lightly.".colorize(:green)
        puts "~~~~~~~~~~~~~~~".colorize(:green)
        Api.get_character_info 
        self.sub_heading
    end

    def sub_heading
        puts "Please enter your favorite character from Breaking Bad".colorize(:yellow)
        input = gets.chomp
        new_character = Character.find_by_name(input)
        if new_character 
        character_options(new_character)
        self.user_input(new_character)
        else
            begin
                raise InputError
            rescue InputError => error
                puts error.message
                input = gets.chomp
                if input == "No"
                    self.sub_heading
                else
                    puts "Thanks for visiting the Breaking Bad CLI! I hope to see you again soon."
                end
            end
        end
    end


    def character_options(new_character)
        puts "Please choose from the following list to see more information"
        puts "1. Birthday"
        puts "2. Occupation"
        puts "3. Status"
        puts "4. Appearance"
        puts "5. Portrayed By"
        puts "6. Image"
        puts "7. Nickname"
    end
    
    def user_input(char)
        input = gets.chomp
        if input == "1" ||  input.include?("Birthday")
            puts "#{char.name} was born on #{char.birthday}."
        elsif input == "2" ||  input.include?("Occupation") 
            puts "Throughout the show, #{char.name} was a #{char.occupation}."
        elsif input == "3" ||  input.include?("Status") 
            puts "#{char.name} was #{char.status} at the end of the series."
        elsif input == "4" ||  input.include?("Appearance")
            puts "#{char.name} appeared in seasons #{char.appearance}."
        elsif input == "5" ||  input.include?("Portrayed By")  || input.include?("Portrayed")
            puts "#{char.name} is portrayed by #{char.portrayed}."
        elsif input == "6" ||  input.include?("Image")  
            puts "Click #{char.img} to see an image of #{char.name}."
        elsif input == "7" ||  input.include?("Nickname")  
            puts "#{char.name} is also referred to as #{char.nickname} throughout the show."
        else
            begin
                raise InputError
            rescue InputError => error
                puts error.message
                input = gets.chomp
                if input == "No"
                self.sub_heading
                else
                    puts "Thanks for visiting the Breaking Bad CLI! I hope to see you again soon."
                end
            end
        end
    end

    class InputError < StandardError
        def message
            "Input not found. Please ensure the first lettes of the first and last name are captitalized, and all words are spelled correctly. Would you like to exit the application?"
        end
    end
end
