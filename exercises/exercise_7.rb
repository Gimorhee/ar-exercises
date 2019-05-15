require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# # Your code goes here ...
# puts "Enter store name below:"
# @user_store_name = gets.chomp

# @user_named_store = Store.create(name: @user_store_name, annual_revenue: 30)

# puts @user_named_store.errors.full_messages

@number = (0...8).map { ('a'..'z').to_a[rand(26)] }.join

puts @number