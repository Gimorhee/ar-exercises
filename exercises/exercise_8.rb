require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@test_employee = @store1.employees.create(first_name: "Seth", last_name: "Curry", hourly_rate: 100)

# puts @test_employee

puts @test_employee[:password]