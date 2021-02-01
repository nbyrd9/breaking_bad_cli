class Cli

    def greeting
        puts "Welcome to the Breaking Bad Experience. Tread Lightly."
        sub_heading
    end

    def sub_heading
        puts "Please choose a character to retrieve more information."
        input = gets.chomp
    end
end