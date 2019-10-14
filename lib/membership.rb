class Membership
  @@all = []
  attr_reader :cost, :gym, :lifter 
  # we need a way to access these from the outside methods

  def initialize(lifter, gym, cost)
    @cost = cost
    @lifter = lifter
    @gym = gym

    @@all << self
  end

  def self.all
    @@all
  end
end
