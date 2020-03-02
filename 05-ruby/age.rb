# Drinking Age ########

print "What is your age:"
age = gets.to_i

if age >= 18
  puts "Lets buy 1000 beers!"
else
  puts "One day buddy"
end

# AC ###########

print "What is the current temp: "
temp = gets.to_f
print "Is the A/C functional [y/n]: "
ac = gets[0].downcase
print "What temp do you want it to be: "
desired_temp = gets.to_f

puts "#{temp}, #{ac}, #{desired_temp}"

if (ac == 'y' and temp > desired_temp)
  puts "Turn on the A/C please."
elsif (ac == 'n' and temp > desired_temp)
  puts "Fix the A/C now! It's hot!"
elsif (ac == 'n' and temp < desired_temp)
  puts "Fix the A/C whenever you have the chance... It's cool..."
end

# AC - Joel solution ################

if ac == 'y'
  puts "Turn on the A/C please" if temp > desired_temp
else
  if temp > desired_temp
    puts "Fix the A/C now! It's hot!"
  else
    puts "Fix the A/C whenever you have the chance.... its cool..."


# Sydney Surburbs ############

print "What suburb do you live in: "
sub = gets.chomp.capitalize

case sub
when 'Gordon'
  puts "Like the bush"
when 'Surry Hills'
  puts "Hip"
when 'Drummoyne'
  puts "Like the water"
else
  puts "Is that a suburb?"
end
