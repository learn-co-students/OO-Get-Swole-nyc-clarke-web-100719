class Membership
  attr_reader :lifter, :gym, :cost
  @@all = []

  def initialize(lifter, gym, cost)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

  def self.all 
  @@all
  end
end
