class Lifter
  attr_reader :name, :lift_total
  @@all = []
  
  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def memberships_total_cost
    memberships.map{|membership| membership.cost}.sum
  end

  def self.average_lift_total
    all.map{|lifter| lifter.lift_total}.sum/all.length.to_f
  end

  def membership_cost_for_specific_gym(gym)
    temp = memberships.find{|membership| membership.gym == gym}
    return temp.cost if temp
    "No membership at that gym"
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end

