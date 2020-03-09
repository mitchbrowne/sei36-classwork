require 'pry'

### A. Given the following data structure:

# ```ruby
# a = ["Anil", "Erik", "Jonathan"]
# ```
#
# 1. How would you return the string `"Erik"`?
# 1. How would you add your name to the array?

a = %w[Anil Erik Jonathan]

a[1]
a[-2]
# a.pop.last.push

a[3] = "Mitch"
a.push "Tom"
a = [a, "Ben"].flatten!

### B. Given the following data structure:

# ```ruby
# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# ```
#
# 1. How would you return the string `"One"`?
# 1. How would you return the string `"Two"`?
# 1. How would you return the number `2`?
# 1. How would you add `{3 => "Three"}` to the hash?
# 1. How would you add `{:four => 4}` to the hash?

h = {
  0 => "Zero",
  1 => "One",
  :two => "Two",
  "two" => 2
}

p h[1]
p h[:two]
p h["two"]
p h[3] = "Three"
p h[:four] = 4

### C. Given the following data structure:

# ```ruby
# is = {true => "It's true!", false => "It's false"}
# ```
#
# 1. What is the return value of `is[2 + 2 == 4]`?
# 1. What is the return value of `is["Erik" == "Jonathan"]`?
# 1. What is the return value of `is[9 > 10]`?
# 1. What is the return value of `is[0]`? --> this returns nil since 0 returns 0 and 0 is not a key
# 1. What is the return value of `is["Erik"]`? --> string is not considered 'truthy' in this case

is = {
  true => "It's true!",
  false => "It's false"
}

p is[2 + 2 == 4]

### D. Given the following data structure:

# ```ruby
# users = {
#   "Jonathan" => {
#     :twitter => "tronathan",
#     :favorite_numbers => [12, 42, 75],
#   },
#   "Erik" => {
#     :twitter => "sferik",
#     :favorite_numbers => [8, 12, 24],
#   },
#   "Anil" => {
#     :twitter => "bridgpal",
#     :favorite_numbers => [12, 14, 85],
#   },
# }
# ```


users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

# 1. How would you access Jonathan's Twitter handle (i.e. the string `"tronathan"`)?
p users["Jonathan"][:twitter]
# 1. How would you add the number `7` to Erik's favorite numbers?
p users["Erik"][:favorite_numbers] << 7
# 1. How would you add yourself to the users hash?
p users["Mitch"] = {
  :twitter => "yourstruly",
  :favorite_numbers => [9999, 12]
}


# 1. How would you return the array of Erik's favorite numbers?
p users["Erik"][:favorite_numbers]

# 1. How would you return the smallest of Erik's favorite numbers?
p users["Erik"][:favorite_numbers].min

# 1. How would you return an array of Anil's favorite numbers that are also even?
evens = []
users["Anil"][:favorite_numbers].each do |n|
  evens << n if n.even?
end

p evens

users["Anil"][:favorite_numbers].select do |n|
  n.even?
end

p users["Anil"][:favorite_numbers].select { |n| n.even?}

# 1. How would you return an array of the favorite numbers common to all users?
p users["Jonathan"][:favorite_numbers] & users["Anil"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Mitch"][:favorite_numbers]

users.values.map { |u| u[:favorite_numbers]}.inject &:&


# 1. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
users.values.map { |u| u[:favorite_numbers]}.inject &:|

pry(main)> users.values.map { |u| u[:favorite_numbers]}.flatten.sort.uniq

binding.pry
