class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self #instance variable
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter #return array of every lifter in a gym
    end.uniq
  end

  def names
    lifters.map do |lifter| #map over uniq lifers and grab their names
      lifter.name.capitalize
    end
  end

  def combined_lift_total
    sum = 0
    lifters.each do |lifter|
      sum += lifter.lift_total
    end
    sum
  end


  def self.all
    @@all
  end

end
