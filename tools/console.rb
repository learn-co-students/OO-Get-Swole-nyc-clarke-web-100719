# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("gene", 325)
l2 = Lifter.new("jack", 645)
l3 = Lifter.new("ryan", 900)

g1 = Gym.new("Ms. T's Gym")
g2 = Gym.new("Nick's Backbusters Gym")
g3 = Gym.new("Yoan's Friendly Gym")

m1 = Membership.new(l1, g2, 50)
m2 = Membership.new(l2, g1, 135)
m3 = Membership.new(l2, g3, 15)
m3 = Membership.new(l3, g3, 75)


binding.pry

puts "Gains!"
