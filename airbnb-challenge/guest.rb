class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        self.trips.map{|trip| trip.listing}
    end

    def trips
        Trip.all.select{|trip| trip.guest == self}        
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select{|guest|guest.name == name}        
    end

end