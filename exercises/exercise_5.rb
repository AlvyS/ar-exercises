require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Stores.sum('annual_revenue')
p   total_revenue

avgStoreRev = total_revenue/Stores.count
p   avgStoreRev

gudstores = Stores.where(avgStoreRev > 1000000)
p   gudstores.size