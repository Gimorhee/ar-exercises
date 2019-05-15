require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |mens_store|
    puts "Store name: #{mens_store[:name]} and store annual revenue: #{mens_store[:annual_revenue]}"
end

@womens_stores_and_revenue = Store.where(womens_apparel: true)

@womens_stores_and_revenue.each do |womens_store_and_revenue|
    if womens_store_and_revenue[:name] && womens_store_and_revenue[:annual_revenue] < 1000000
        puts "Store name with less than 1M revenue: #{womens_store_and_revenue[:name]}"
    end
end