require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

# Define the Employee class
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60
  )

  @store1.employees.create(
  first_name: "Paul", 
  last_name: "Formby", 
  hourly_rate: 100
  )

  @store1.employees.create(
  first_name: "James", 
  last_name: "Miller", 
  hourly_rate: 75
  )

  @store2.employees.create(
  first_name: "Homer", 
  last_name: "Simpson", 
  hourly_rate: 45
  )

  @store2.employees.create(
    first_name: "Marge", 
    last_name: "Thompson", 
    hourly_rate: 25
    )

    @store2.employees.create(
      first_name: "Liah", 
      last_name: "Kisar", 
      hourly_rate: 80
      )

      puts @store1.employees