class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    
    self.class.all << self
  end

  def memberships
    Membership.all.select { |membership| membership.gym === self }
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def lifter_names
    lifters.map { |lifters| lifters.name }
  end

  def lift_total
    lifters.reduce(0) { |total_weight, lifter| total_weight + lifter.lift_total }
  end

  def self.all
    @@all
  end
end
