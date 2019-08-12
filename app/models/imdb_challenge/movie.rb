class Movie

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def movie_characters
        MovieCharacter.all.select {|movie_character| movie_character.movie == self}
    end
    
    def characters
        self.movie_characters.map {|movie_character| movie_character.character}
    end

    def actors
        self.characters.map {|character| character.actor}
    end

    def actor_count
        self.actors.count
    end

    def self.most_actors
        self.all.max{|movie| movie.actor_count}
    end

end