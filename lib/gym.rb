class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    total = 0
    lifters.each do |lifter|
      total += lifter.lift_total
    end
    total
  end


end
