# ### 1. Create an array of the days of the week
# - Create a variable named `days_of_the_week` as an array of the following:
#     - Monday
#     - Tuesday
#     - Wednesday
#     - Thursday
#     - Friday
#     - Saturday
#     - Sunday
#
# ### 2. My calendar says the first day is Sunday...
# - Remove Sunday from the last postion and move it to the first position.  Use array methods.
#
# ### 3. Create a new array of the days of the week:
# - The first inner array should be the weekdays
# - The second inner array should be the weekend days
#
# ### 4. Remove either the weekdays or the weekends
# Your choice...
#
# ### 5. Sort the remaining days alphabetically


require 'pry'

days_of_the_week = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
p days_of_the_week
days_of_the_week.unshift days_of_the_week.delete_at -1
p days_of_the_week

new_days_of_the_week = [["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], ["Saturday", "Sunday"]]
p new_days_of_the_week[1]
new_days_of_the_week.delete_at 1
p new_days_of_the_week
p new_days_of_the_week[0].sort

# Joel Solution:

days = %w( Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

# prgrammer's print out
p days

# don't tend to use for loops since we use each method
for i in 0..days.size-1
  puts days[i]
end

# iterating with the .each iterator method which recieves a block
days.each do |day| # what we call each element in block
  puts day
end

# long winded but explicit
# moving_day = days.pop
# days.unshift moving_day

# clever...
# days.unshift days.pop

# most Ruby-ish solution
# check Array.methods and find a potential method that could potentially use
days.rotate! -1

day_parts = [days[1..5], days.rotate[-2..-1]]

day_parts.pop
p day_parts.flatten!.sort!

day_parts.each do |day|
  puts day
end

# binding.pry
