class User < ActiveRecord::Base
    has_many :posts
    has_many :lists, through: :posts

    def self.handle_new_user
        # puts "new user here"
        puts "What is your name?"
        name = gets.chomp
        puts "What is your username?"
        username = gets.chomp
        User.create(name: name, username: username)
    end
    def self.handle_returning_user
        puts "Welcome back. What is your username?"
        username = gets.chomp
        User.find_by(username: username)
        # puts "WHat is your password?"

        # passwordVar = gets.chomp  #Older version
        # passwordVar = TTY::Prompt.new.mask("What is your password?")
        User.find_by(username: username, password: passwordVar)
    end
end
