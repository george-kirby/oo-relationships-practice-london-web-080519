require 'pry'

require_relative 'actor.rb'
require_relative 'character.rb'
require_relative 'movie.rb'
require_relative 'show.rb'
require_relative 'movie_character.rb'
require_relative 'show_character.rb'

#seed data

hemsworth = Actor.new("Chris Hemsworth")
bruhl = Actor.new("Daniel Bruhl")
gosling = Actor.new("Ryan Gosling")
hardy = Actor.new("Tom Hardy")
carrell = Actor.new("Steve Carrell")
stone = Actor.new("Emma Stone")

mad_max = Character.new(name: "Mad Max", actor: hardy)
hunt = Character.new(name: "James Hunt", actor: hemsworth)
lauda = Character.new(name: "Niki Lauda", actor: bruhl)
driver = Character.new(name: "Driver", actor: gosling)
thor = Character.new(name: "Thor", actor: hemsworth)
scott = Character.new(name: "Michael Scott", actor: carrell)
weaver = Character.new(name: "Cal Weaver", actor: carrell)
palmer = Character.new(name: "Jacob Palmer", actor: gosling)
hannah = Character.new(name: "Hannah", actor: stone)
luke = Character.new(name: "Luke", actor: gosling)

fury_road = Movie.new("Mad Max: Fury Road")
rush = Movie.new("Rush")
drive = Movie.new("Drive")
thor_ragnarok = Movie.new("Thor: Ragnarok")
crazy_stupid_love = Movie.new("Crazy Stupid Love")
thor_movie = Movie.new("Thor")
thor_dark_world = Movie.new("Thor: The Dark World")
place_beyond_pines = Movie.new("The Place Beyond The Pines")

rush_show = Show.new("Rush")
friends = Show.new("Friends")
the_office = Show.new("The Office")

mc1 = MovieCharacter.new(movie: fury_road, character: mad_max)
mc2 = MovieCharacter.new(movie: rush, character: lauda)
mc3 = MovieCharacter.new(movie: rush, character: hunt)
mc4 = MovieCharacter.new(movie: crazy_stupid_love, character: weaver)
mc5 = MovieCharacter.new(movie: crazy_stupid_love, character: palmer)
mc6 = MovieCharacter.new(movie: drive, character: driver)
mc7 = MovieCharacter.new(movie: thor_movie, character: thor)
mc8 = MovieCharacter.new(movie: thor_dark_world, character: thor)
mc9 = MovieCharacter.new(movie: thor_ragnarok, character: thor)
mc10 = MovieCharacter.new(movie: crazy_stupid_love, character: hannah)
mc11 = MovieCharacter.new(movie: place_beyond_pines, character: luke)

sc1 = ShowCharacter.new(show: rush_show, character: hunt)
sc2 = ShowCharacter.new(show: rush_show, character: lauda)
sc3 = ShowCharacter.new(show: the_office, character: scott)

binding.pry

0