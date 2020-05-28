class Movie < ActiveRecord::Base
    
    attr_reader :movie_id
    # belongs_to :genre
    # has_many :reviews
    def self.movies
     Movie.all.map {|movie| movie.movie_name}
        
    end

    def self.movie_lookup(name)
        Movie.find_by(movie_name: name)
    end
    
    def self.reviews_by_name(name)
        movie = Movie.movie_lookup(name)
        Review.select{|review| review.movie_id == movie.movie_id}
    end

    def self.good_reviews(name)
        movie = Movie.movie_lookup(name)
      10.times {Review.create(user_id: User.all.sample.id, movie_id: movie.id, rating: rand(6..10))}
    end

    def self.find_genre(name)
        movie = Movie.movie_lookup(name)
        movie.genre
    end
    
    def self.bad_reviews(name)
        a = ["action", "horror"]
        b = ["I lost my arm... Watching a movie. Leave this site! Don't watch anything!",
             "Movies can't hurt you they said, and I believed them, they lied.",
             "They were... give them back!"]
        movie = Movie.movie_lookup(name)
        if a.include?(Movie.find_genre(name))
      10.times {Review.create(user_id: User.all.sample.id, movie_id: movie.id, rating: rand(5), post: b.sample )}
        else
            Movie.good_reviews(name)
        end

    end

    

end