class User < ActiveRecord::Base
    # has_many :reviews
    attr_reader :user_id

    def self.login
        prompt = TTY::Prompt.new
        name = prompt.ask("what is your username?")
        if User.find_by(user_name: name)
        login = User.find_by(user_name: name)
        return login
        elsif !User.find_by(user_name: name)
            puts "that username doesn't exist"
            self.login
        end
    end
    
    def self.register
        prompt = TTY::Prompt.new
        name = prompt.ask("what is your username?")
        
        if User.find_by(user_name: name)
            puts "that username is still in use"
            self.register
            
        elsif !User.find_by(user_name: name)
            User.create(user_name: name)
        end
    end

    

    def reviews
    end



end