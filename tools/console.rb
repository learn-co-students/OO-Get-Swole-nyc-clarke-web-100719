# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Gene", 325)
l2 = Lifter.new("Jack", 625)
l3 = Lifter.new("Ryan", 1000)

g1 = Gym.new("Tiana's Gym")
g2 = Gym.new("Nick's Backbusters Gym")
g3 = Gym.new("Yoan's Friendly Gym")

m1 = Membership.new(50, l1, g1)
m2 = Membership.new(70, l1, g2)
m3 = Membership.new(800, l1, g3)
m4 = Membership.new(50, l2, g1)

binding.pry

puts "Gains!"
