class Interface

    attr_reader :prompt
    attr_accessor :user

    def initialize
        @prompt = TTY::Prompt.new
    end

    #write the instance methods of what I need to happen

    def welcome
        puts "Hello, Welcome to the hero application."
    #useful if you want to execute a function after a user has made a choice
        @prompt.select("Are you a user or a new user?") do |menu|
            menu.choice "Returning User", -> {User.handle_retruning_user}
            # menu.choice "New User", 2
            menu.choice "New User", -> { User.handle_new_user } #procified version -> is same as @proc
        end
    #chose something from a database
        # puts "Hello, welcome to the hero application."
        # puts "Are you a new user of a returming user?"
        # answer = @prompt.select("Are ou a returning user or a new user?", [{"Returning user" => 1}, {"New User" => 2}])

        # if answer == 1
        #     User.handle_retruning_user
        # elsif answer == 2
        #     User.handle_new_user
        # end


    end
end