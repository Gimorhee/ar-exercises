require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Danny", last_name: "Rhee", hourly_rate: 1000)
@store1.employees.create(first_name: "Kyrie", last_name: "Irving", hourly_rate: 700)
@store1.employees.create(first_name: "Lebron", last_name: "James", hourly_rate: 1000)
@store1.employees.create(first_name: "Stephen", last_name: "Curry", hourly_rate: 1000)

@store2.employees.create(first_name: "Damian", last_name: "Lillard", hourly_rate: 650)
@store2.employees.create(first_name: "Russel", last_name: "Westbrook", hourly_rate: 650)
@store2.employees.create(first_name: "Michael", last_name: "Jordan", hourly_rate: 1000)
