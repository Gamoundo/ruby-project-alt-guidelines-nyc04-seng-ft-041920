User.delete_all
Movie.delete_all
Genre.delete_all
Review.delete_all


akil = User.create(:user_name => "A")
tony = User.create(:user_name => "Rosa")
bob = User.create(:user_name => "Shinigami")
stacy = User.create(:user_name =>"Stacy228")
joan = User.create(:user_name => "Beer Goggles")
steve = User.create(:user_name => "Octodad")
theo = User.create(:user_name => "Ray")
tommy = User.create(:user_name => "Magician")


horror = Genre.create(name: "horror")
comedy = Genre.create(name: "comedy")
action = Genre.create(name: "action")
western = Genre.create(name: "western")
romance = Genre.create(name: "romance")


doom = Movie.create(movie_name: "doom", genre: "horror")
shining = Movie.create(movie_name: "The Shining", genre: "horror")
halloween = Movie.create(movie_name: "Halloween", genre: "horror")
bullet_race = Movie.create(movie_name: "Bullet Race", genre: "action")
salt = Movie.create(movie_name: "Salt", genre: "action")
busan = Movie.create(movie_name: "The Train to Busan", genre: "horror")
in_time = Movie.create(movie_name: "In time", genre: "action")
kung_pow = Movie.create(movie_name: "Kung Pow", genre: "comedy")
mafia = Movie.create(movie_name: "Mafia", genre: "comedy")
three_days = Movie.create(movie_name: "The Next Three Days", genre: "romance")
aladdin = Movie.create(movie_name: "Aladdin", genre: "romance")
weird_science = Movie.create(movie_name: "Weird Science", genre: "comedy")
hangover = Movie.create(movie_name: "The Hangover", genre: "comedy")
riddick = Movie.create(movie_name: "Pitch Black", genre: "horror")
good_bad = Movie.create(movie_name: "The Good, The Bad, and the Weird", genre: "western")
host1 = Movie.create(movie_name: "The Host", genre: "comedy")
django = Movie.create(movie_name: "Django Unchained", genre: "western")
dark_tower = Movie.create(movie_name: "The Dark Tower", genre: "western")

20.times {Review.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id, rating: rand(10))}

Review.create(user_id: 98, movie_id: 205, post: "I lost my arm... Watching a movie. Leave this site! Don't watch anything!")


puts "seeded"


