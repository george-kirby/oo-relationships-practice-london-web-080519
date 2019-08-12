class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def character_count
        characters.count
    end

    def movies
        characters.map{|character| character.movies}
    end

end