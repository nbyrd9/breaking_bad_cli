require_relative('../lib/Character')

class Cli
    def greeting
        puts "----------"
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        puts "----------"
        Api.get_character_info
        self.sub_heading
    end

    def sub_heading
        puts "Please enter your favorite character from Breaking Bad"
        input = gets.chomp
        new_character = Character.find_by_name(input)
        self.character_options(new_character)
        user_input(new_character)
    end
    
    def character_options(new_character)
        puts "Please choose from the following list to see more information"
        puts "1. Birthday"
        puts "2. Occupation"
        puts "3. Status"
        puts "4. Appearance"
        puts "5. Portrayed By"
    end
    
    def user_input(char)
        input = gets.chomp
        if input == "1" 
            puts "#{char.name} was born on #{char.birthday}."
        elsif input == "2" 
            puts "#{char.name} was employed at #{char.occupation}."
        elsif input == "3" 
            puts "#{char.name} was #{char.status} at the end of the series."
        elsif input == "4"
            puts "#{char.name} appeared in seasons #{char.appearance}."
        elsif input == "5"
            puts "#{char.name} is portrayed by #{char.portrayed}."
        else
            puts "Sorry! That selection was invalid."
            #add error messaging
        end
    end
end





    # def character_info(character)
    #     puts "Name: #{character.name}"
    #     puts "Occupations: #{character.occupation}"
    #     puts "Status: #{character.status}"
    #     puts "Appearance: #{character.appearance}"
    #     puts "Portrayed By: #{character.portrayed}"
    # end 

    # def view_character(char)
    #     puts "Birthday: #{char.birthday}"
    #     puts "Occupation: #{char.occupation}"
    #     puts "Status: #{char.status}"
    #     puts "Appearance: #{char.appearance}"
    # end

    # Character.select{|key, value| key["name"]}