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
        if input.include?("1") ||  input.include?("Birthday")
            puts "#{char.name} was born on #{char.birthday}."
        elsif input.include?("2") ||  input.include?("Occupation") 
            puts "Throughout the show, #{char.name} was a #{char.occupation}."
        elsif input.include?("3") ||  input.include?("Status") 
            puts "#{char.name} was #{char.status} at the end of the series."
        elsif input.include?("4") ||  input.include?("Appearance")
            puts "#{char.name} appeared in seasons #{char.appearance}."
        elsif input.include?("5") ||  input.include?("Portrayed By")  || input.include?("Portrayed")
            puts "#{char.name} is portrayed by #{char.portrayed}."
        else
            puts "Sorry! That selection was invalid."
            #add error messaging
        end
    end
end


