require_relative '../setup'


puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Define the Store class
class Store < ActiveRecord::Base
  has_many :employees
end

# Define the Employee class
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Your code goes below here ...

# Create stores
burnaby_store = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond_store = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown_store = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Check the number of stores
puts Store.count
