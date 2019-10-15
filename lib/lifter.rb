class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def total_cost
    memberships.sum(&:cost)
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end

  def self.all
    @@all
  end

  def self.average_lift_total
    all.sum(&:lift_total) / all.count.to_f
  end
end
