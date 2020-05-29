class Coding
    attr_accessor :prompt, :user, :status
    
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
            something
        elsif login == "register"
            
            User.register
        end
    end

    def home
        # puts "Welcome back"
        # sleep 3
        puts "Enjoy the experience #{user.user_name}"
    end

    def browse
        watch = prompt.select("What do you want to watch?", Movie.movies, active_color: :yellow)
            Movie.good_reviews(watch)
            self.sure?(watch)
            Movie.bad_reviews(watch)
            sleep 4
            self.watch_exit  
    end

    def sure?(movie_name)
        a = ["action", "horror"]
        # experience = ["lose an arm", "lose an eye", "come out unscathe", "gain wealth", "lose a limb"]
        sure = prompt.select("you are choosing #{movie_name}?", ["yes", "no"])
            # binding.pry
        if sure == "yes" && a.include?(Movie.find_genre(movie_name))
            experience = ["lose an arm", "lose an eye", "come out unscathe", "gain wealth", "lose a limb", "papercut", "lose your home", "grow 3 inches", "Cured of anything"]
           
            user.status=(experience[rand(experience.count - 1)])
            # binding.pry
            # user.save
            puts user.status?
            # 
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
           browse
        elsif choice == "Exit"
            self.user.destroy
            title
            sleep 4
        end
    end






end

