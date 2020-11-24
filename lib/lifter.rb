class Lifter
  attr_reader :name 
  attr_accessor :lift_total

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
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms
    memberships.map {|membership| membership.gym}
  end 

  def self.average_lift_total 
    @@all.sum {|lifter| lifter.lift_total}/ @@all.count
  end 

  def total_cost 
    memberships.sum {|membership| membership.cost}
  end 

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end 

end
