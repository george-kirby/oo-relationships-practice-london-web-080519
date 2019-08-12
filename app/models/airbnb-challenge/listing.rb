class Listing

    @@all = []

    attr_reader :city

    def initialize(city)
        @city = city
        @@all << self
    end
    
    def guests
        self.trips.map {|trip|trip.guest}
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select{|listing| listing.city == city}
    end

    def self.most_popular
        #self.all.max_by{|listing| listing.trip_count}
        self.all.group_by{|listing| listing.trip_count}.max.last
        #self.all.max(self.all.length){|listing1, listing2| listing1.trip_count <=> listing2.trip_count}
    end

end