class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end


  #Done
  def self.list_of_all_gyms
    @@all.map {|gym| gym.name}
  end

  #Done
  def list_of_all_memberships_of_gym
    Membership.all.select {
     |membership| membership.gym == self
    }
  end

  #Done
  def list_of_names_of_lifters_from_gym
    Membership.all.select {
      |membership| membership.gym == self
    }.map {|membership| membership.lifter}
  end

  #Done
  def lift_total_from_all_lifters
    Membership.all.select {
        |membership| membership.gym == self
    }.map {|membership| membership.lifter.lift_total}.sum
  end

  def self.all
    @@all
  end
end
