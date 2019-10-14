# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Gene", 112)
l2 = Lifter.new("Jack", 625)
l3 = Lifter.new("Ryan", 2000)

gym1 = Gym.new("Tiana's Gym")
gym2 = Gym.new("Nick's Backbusters Gym")
gym3 = Gym.new("Yoan's Friendly Gym")

membership1 = Membership.new(l1, gym1, 50)
membership2 = Membership.new(l1, gym2, 50)
membership3 = Membership.new(l2, gym3, 50)
membership4 = Membership.new(l3, gym1, 75)


binding.pry


