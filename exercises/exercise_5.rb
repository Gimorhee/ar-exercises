require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum = Store.sum(:annual_revenue)
puts "Total revenue of all the stores: #{@sum}"

@number_of_store = Store.count # =>  Should be 5 since we destroyed one
@average_revenue = @sum / @number_of_store
puts "Average annual revenue for all stores: #{@average_revenue}"

@high_revenue_store = Store.where("annual_revenue >= 1000000").count
puts "Number of stores with 1M revenue or more: #{@high_revenue_store}"