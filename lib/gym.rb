class Gym
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    memberships.map{|membership| membership.lifter}
  end

  def self.memberships_for(gym)
    gym.memberships
  end
  
  def self.liffter_at(gym)
    gym.lifters
  end

  def lifters_names
    lifters.map{|lifter| lifter.name}
  end

  def combine_lift_total
    lifters.map{|lifter| lifter.lift_total}.sum
  end

end
