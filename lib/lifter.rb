class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  #get list of memberships for individual lifter
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self #returns an array
    end
  end
  #make sure to take advantage of the methods youve written
  def gyms
  #map over the memberships array
    memberships.map do |membership|
      membership.gym #gets the gym for that membership (returns array)
    end
  end

  #average lift total: 

  def self.lift_totals_average #needs to be on ALL the lifters not just one

    #could use recuce to be fancy
    #@@all.reduce(0) do |accumulator, lifter|
    ##    accumulator + lifter.lift_total
    # end / @@.count
    avg = 0
    @@all.each do |lifter|
      avg += lifter.lift_total
    end
    avg / @@all.length
  end

  def total_costs
    cost = 0 #need to be able to add up something
    memberships.each do |membership|
     cost += membership.cost 
    end
    cost #if you dont return cost here, you'll return the array, not the cost
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def singup(gym, cost)
    Membership.new(self, gym, cost)
  end

  def self.all
    @@all
  end

end
