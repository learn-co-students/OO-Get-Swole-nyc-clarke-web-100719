# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Peter", 100)
lifter2 = Lifter.new("Ron", 20)
lifter3 = Lifter.new("Chirs", 30)

gym1 = Gym.new("PF")
gym2 = Gym.new("BK")
gym3 = Gym.new("EF")
gym4 = Gym.new("XF")

membership1 = Membership.new(lifter1, gym1, 50)
membership2 = Membership.new(lifter1, gym2, 100)
membership3 = Membership.new(lifter1, gym3, 20)
membership4 = Membership.new(lifter2, gym1, 30)
membership5 = Membership.new(lifter3, gym3, 50)

binding.pry

puts "Gains!"
