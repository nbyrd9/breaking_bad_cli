class Cli

    def greeting
        puts "----------"
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        puts "----------"
        self.sub_heading
    end

    def sub_heading
        puts "Please enter your favorite character from Breaking Bad"
        input = gets.chomp
        new_character = Api.get_character_info(input) 
        self.character_options
        user_input(input)
        #while loop
    end

    def character_name
        @character_name = gets.strip.split(" ")
        @character_name.each {|name| name.capitalize }
    end
    
    def character_options
        puts "Please choose from the following list to see more information"
        puts "1. Birthday"
        puts "2. Occupation"
        puts "3. Status"
        puts "4. Appearance"
        puts "5. Portrayed By"
    end

    def user_selection(choice)
        if choice == @character_name
            puts "Great choice!"
            character_name
            name = @character_name
            @character = Character.all.find {|i| i.name == name.join(" ")}
            view_character(@character)
        else
            return false
            #add error messaging here
        end
    end
    
        def view_character(char)
            puts "Birthday: #{char.birthday}"
            puts "Occupation: #{char.occupation}"
            puts "Status: #{char.status}"
            puts "Appearance: #{char.appearance}"
        end
    
        def user_input(new_character)
            input = gets.chomp
            if input == "1" || "Birthday"
                puts "#{char.new} was born on #{char.birthday}."
            elsif input == "2" || "Occupation"
                puts "#{char.new} worked at #{char.occupation}."
            elsif input == "3" || "Status"
                puts "#{char.new} was #{char.status} at the end of the series."
            elsif input == "4" || "Appearance"
                puts "#{char.new} appeared in seasons #{char.name}."
            else
                #add error messaging here
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

