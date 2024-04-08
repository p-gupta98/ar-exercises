require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

# ### Exercise 5: Calculations

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)

puts "Total revenue for all stores: #{@total_revenue}"

@average_annual_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: #{@average_annual_revenue}"

@stores_over_1m = Store.where("annual_revenue >= ?", 100000000).count
puts "Number of stores that are generating $1M or more in annual sales: #{@stores_over_1m}"