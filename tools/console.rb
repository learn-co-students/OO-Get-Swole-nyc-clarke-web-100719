# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require 'pry'
require_relative '../config/environment.rb'



lifter1 = Lifter.new("George", 154)
lifter2 = Lifter.new("John", 200)
lifter3 = Lifter.new("Jackal", 300)

gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Gold's Gym")
gym3 = Gym.new("Anytime Fitness")


membership1 = Membership.new(gym1, lifter1, 50)
membership2 = Membership.new(gym2, lifter1, 75)
membership2 = Membership.new(gym2, lifter2, 75)

lifter2.new_gym_membership(gym3, 120)

binding.pry

puts "Gains!"
