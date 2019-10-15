# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("Rock Gym")
gym2 = Gym.new("Water Gym")
gym3 = Gym.new("Electric Gym")
gym4 = Gym.new("Grass Gym")
gym5 = Gym.new("Poison Gym")

lifter1 = Lifter.new("Jimmy", 100)
lifter2 = Lifter.new("Johnny", 200)
lifter3 = Lifter.new("Jackie", 150)

m1 = lifter1.sign_up(gym1, 100)
m2 = lifter1.sign_up(gym2, 200)
m3 = lifter1.sign_up(gym4, 233)
m4 = lifter2.sign_up(gym2, 300)
m5 = lifter2.sign_up(gym3, 244)

binding.pry

puts "Gains!"
