require_relative '../config/environment'



coding = Coding.new()
coding.title
person = coding.login?

coding.user = person

coding.home
movies = coding.browse
Movie.good_reviews(movies)
coding.sure?(movies)
Movie.bad_reviews(movies)
sleep 4
coding.watch_exit



#generate good reviews based on the movie instance
#ask if they want to watch the movie

#if yes if movie.genre == action, || horror random punishment dialogue
#if no movies = coding.browse
#generate scrambled reviews
# ask if they want to watch the movie
#if no movies = coding.browse

# coding


puts "hello world"