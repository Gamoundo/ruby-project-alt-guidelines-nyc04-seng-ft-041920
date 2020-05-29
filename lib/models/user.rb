class User < ActiveRecord::Base
    # has_many :reviews
    attr_reader :user_id
    attr_accessor :status
    # def initialize 
    #     @status = []
    # end
    @@status = []

    def self.login
        prompt = TTY::Prompt.new
        name = prompt.ask("what is your username?")
        if User.find_by(user_name: name)
        login = User.find_by(user_name: name)
        @@status = []
        puts "welcome back"
        return login
        elsif !User.find_by(user_name: name)
            puts "that username doesn't exist"
            coding = Coding.new()
            person = coding.login?
        end
    end
    
    def self.register
        prompt = TTY::Prompt.new
        name = prompt.ask("what is your username?")
        
        if User.find_by(user_name: name)
            puts "that username is still in use"
            # self.register
            coding = Coding.new()
            person = coding.login?
            
        elsif !User.find_by(user_name: name)
            puts "Enjoy your stay"
            User.create(user_name: name)
        end
    end

    def status=(arg)
        @@status << arg
    end


    def status?
        @@status
    end



end