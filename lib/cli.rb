class Cli
    def greeting
        puts "----------"
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        puts "----------"
        Api.get_character_info #keep this in greeting
        self.sub_heading
    end

    def sub_heading
        puts "Please enter your favorite character from Breaking Bad"
        input = gets.chomp
        new_character = Character.find_by_name(input)
        character_options(new_character)
        self.user_input(input)
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
                self.character_options(new_character)
            end
        end
    end


    class InputError < StandardError
        def message
            "Input not found. Please ensure the first letter of the first and last name is captitalized, and all words are spelled correctly."
        end
    end
end





 # def exit
    #     puts "Would you like to see something else?"
    #         input = gets.chomp
    #         if input == "Yes"
    #             first_choice(input)
    #         else input == "No"
    #             puts "Thanks for stopping by!"
    #         end
    # end
