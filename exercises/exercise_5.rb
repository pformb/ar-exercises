require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
store_count = Store.count
puts "Total Annual Revenue of all stores: #{total_revenue}"
puts "Average Annual Revenue per store: #{total_revenue / store_count}"

stores_1m_count = Store.where(
  'annual_revenue > ?', 1_000_000
  )
  puts stores_1m_count.count