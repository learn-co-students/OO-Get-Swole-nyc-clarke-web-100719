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
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def self.lift_totals_average
    # avg = 0
    # @@all.each do |lifter|
    #   avg += lifter.lift_total
    # end
    # avg / @@all.length.to_f

    @@all.reduce(0) do |acc, lifter|
      acc + lifter.lift_total
    end / @@all.count
  end

  def total_cost
    memberships.reduce(0) { |acc, membership| acc + membership.cost }
  end

  def signup(gym, cost)
    Membership.new(cost, self, gym)
  end
  
end
