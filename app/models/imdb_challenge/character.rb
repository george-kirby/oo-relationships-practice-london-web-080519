class Character

    attr_reader :name, :actor

    @@all = []

    def initialize(name: , actor: )
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movie_characters
        MovieCharacter.all.select {|movie_character| movie_character.character == self}
    end

    def movies
        self.movie_characters.map {|movie_character| movie_character.movie}
    end

    def movie_count
        self.movies.count
    end

    def show_characters
        ShowCharacter.all.select {|show_character| show_character.character == self}
    end

    def shows
        self.show_characters.map {|show_character| show_character.show}
    end

    def show_count
        self.shows.count
    end

    def appearances
        self.movie_count + self.show_count
    end

    def self.most_appearances
        self.all.max_by {|character| character.appearances}
    end
end