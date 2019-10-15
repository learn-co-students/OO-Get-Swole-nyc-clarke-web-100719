class Membership
  attr_reader :gym, :lifter, :cost

  @@all = []

  def initialize(gym, lifter, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost
    self.class.all << self
  end

  def self.all
    @@all
  end
end
