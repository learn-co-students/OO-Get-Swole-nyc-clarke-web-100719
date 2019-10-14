# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
# set these tests up as soon as the relationships are working
# 

l1 = Lifter.new("gene", 112)
l2 = Lifter.new("Jack", 625)
l3 = Lifter.new("ryan", 1000)

g1 = Gym.new("Tiana's Gym")
g2 = Gym.new("Nick's Backbusters Gym")
g3 = Gym.new("Yoan's Friendly Bar")

m1 = Membership.new(l1, g1, 52)
m2 = Membership.new(l1, g2, 90)
m3 = Membership.new(l2, g3, 10)
m4 = Membership.new(l1, g3, 100)
m5 = Membership.new(l3, g3, 100)


binding.pry

puts "Gains!"
