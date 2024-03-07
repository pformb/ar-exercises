require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
mission_store = Store.create(
  name: "Mission", 
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true
  )
whistler_store = Store.create(
  name: "Whistler", 
  annual_revenue: 1900000 , 
  mens_apparel: true, 
  womens_apparel: false
  )
  yaletown_store = Store.create(
  name: "Yaletown", 
  annual_revenue: 430000, 
  mens_apparel: true, 
  womens_apparel: true
  )

  @mens_stores = Store.where( 
    mens_apparel: true
    )

    @mens_stores.each do |store|
      puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
    end

    @womens_stores = Store.where(
      womens_apparel: true
      ).where('annual_revenue < ?', 1_000_000)

      @womens_stores.each do |store|
        puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
      end