class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  #Done
  def list_of_all_memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  #Done
  def list_of_all_gyms
    Membership.all.select {
      |membership| membership.lifter == self
    }.map {|membership| membership.gym}
  end

  #Done
  def total_cost_of_memberships
    total_cost = 0

    Membership.all.select {
        |membership| membership.lifter == self
    }.each {|membership| total_cost += membership.cost}

    return total_cost
  end

  #Done
  def new_gym_membership(gym, cost)
    Membership.new(gym, self, cost)
  end

  #Done
  def self.list_of_all_lifters
    @@all.map {|lifter| lifter.name}
  end

  #Done
  def self.average_lift_total_of_all_lifters
    average = 0
    @@all.each {|lifter| average += lifter.lift_total}

    return average / @@all.length
  end

  def self.all
    @@all
  end
end
