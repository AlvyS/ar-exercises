require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Stores.find(1)
@store1.name = "newStore1Name"

@store2 = Stores.find(2)

p Stores.count
p @store1.name
