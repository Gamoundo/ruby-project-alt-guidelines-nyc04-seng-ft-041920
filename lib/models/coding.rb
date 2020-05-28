class Coding
    attr_accessor :prompt, :user
    
    def initialize 
        @prompt = TTY::Prompt.new
    end

    def title
        puts "The Experience"
    end

    def login?
        login = prompt.select("login or register", ["login", "register"])

        if login == "login"
            something = User.login
             puts "Welcome back"
            something
        elsif login == "register"
            puts "Enjoy your stay"
            User.register
        end
    end

    def home
        # puts "Welcome back"
        # sleep 3
        puts "Enjoy the experience #{user.user_name}"
    end

    def browse
        watch = prompt.select("What do you want to watch?", Movie.movies)
            
    end

    def sure?(movie_name)
        a = ["action", "horror"]
        experience = ["lose an arm", "lose an eye", "come out unscathe", "gain wealth", "lose a limb"]
        sure = prompt.select("you are choosing #{movie_name}?", ["yes", "no"])
            # binding.pry
        if sure == "yes" && a.include?(Movie.find_genre(movie_name))
          puts  experience.sample
          sleep 3
        elsif sure == "no"
            browse
        else
            puts "you were not harmed while watching this movie"
            sleep 3
        end
    end

    def watch_exit
        choice = prompt.select("Browse, Exit?", ["Browse", "Exit"])

        if choice == "Browse"
            self.browse
        elsif choice == "Exit"
            title
            sleep 4
        end
    end






end

