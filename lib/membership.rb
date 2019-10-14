class Membership
  attr_reader :cost, :gym, :lifter
  @@all = []

  def self.all
    @@all
  end


  def initialize(lifter, gym, cost)
    @lifter = lifter
    @cost = cost
    @gym = gym
    self.class.all << self
  end


end
