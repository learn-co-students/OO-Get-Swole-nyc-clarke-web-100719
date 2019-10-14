class Lifter
  
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym} 
  end

  def self.average_lift_total 
    sum = all.reduce(0) {|sum, lifter| sum + lifter.lift_total}
    sum / all.length
  end

  def total_cost
    memberships.reduce {|sum, membership| sum + membership.cost} 
  end

  def signup(gym, cost)
    Membership.new(self, gym, cost)
  end


end
