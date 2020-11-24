# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("LA Fitness")
g2 = Gym.new("YMCA")
g3 = Gym.new("Crossfit")

l1 = Lifter.new("Mitch", 500)
l2 = Lifter.new("Charlie", 100)
l3 = Lifter.new("John", 200)

m1 = Membership.new(30, l1, g1)
m2 = Membership.new(10, l2, g2)
m3 = Membership.new(10, l1, g2)
m4 = Membership.new(80, l3, g3)

binding.pry

puts "Gains!"
