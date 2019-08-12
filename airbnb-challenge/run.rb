require 'pry'

require_relative 'guest.rb'
require_relative 'listing.rb'
require_relative 'trip.rb'

#seed data

adam = Guest.new("Adam")
bob = Guest.new("Bob")
charles = Guest.new("Charles")
daniel = Guest.new("Daniel")
bob_2 = Guest.new("Bob")

paris = Listing.new("Paris")
london_1 = Listing.new("London")
london_2 = Listing.new("London")
amsterdam = Listing.new("Amsterdam")

t4 = Trip.new(listing: paris, guest: adam)
t5 = Trip.new(listing: paris, guest: charles)
t1 = Trip.new(listing: london_1, guest: adam)
t2 = Trip.new(listing: london_2, guest: adam)
t3 = Trip.new(listing: london_1, guest: bob)
t6 = Trip.new(listing: london_1, guest: charles)
t7 = Trip.new(listing: amsterdam, guest: daniel)
t9 = Trip.new(listing: paris, guest: bob_2)
t8 = Trip.new(listing: london_2, guest: daniel)

binding.pry

0