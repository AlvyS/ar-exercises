require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Stores.create(
    name: 'Surrey',
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true
    )

whistler = Stores.create(
    name: 'Whistler',
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: false
    )

yaletown = Stores.create(
    name: 'Yaletown',
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
    )

p Stores.count 

@mens_stores = Stores.where(mens_apparel: true)
# p @mens_stores

@mens_stores.each do |i|
    p i.name
    p i.annual_revenue
end


@womens_stores = Stores.where(womens_apparel: true).where('annual_revenue < 1000000')
# p @womens_stores

@womens_stores.each do |i|
    p i.name
    p i.annual_revenue
end