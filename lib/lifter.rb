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
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift_total
    total = 0
    @@all.each do |lifter|
      total += lifter.lift_total
    end
    total / @@all.length
  end

  def total_cost
    total_cost = 0
    memberships.each do |membership|
    total_cost += membership.cost
    end
    total_cost
  end

  def sign_up(gym, membership_cost)
    Membership.new(self, gym, membership_cost)
  end

end
