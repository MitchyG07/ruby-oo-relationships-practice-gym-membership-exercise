class Gym
  attr_reader :name

  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end 

  def members
    Membership.all.select {|membership| membership.gym == self}
  end 

  def lifters 
    self.members.map {|membership| membership.lifter}
  end 

  def lifter_names
    self.lifters.map {|lifter| lifter.name}
  end 

  def combined_lift_total
    self.lifters.sum {|lifter| lifter.lift_total}.to_f
  end 
  
end
