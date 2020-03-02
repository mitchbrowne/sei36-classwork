# while conditional
#  statements
# end

# init, conditional, update
i = 0
while i < 5 # conditional
  puts "i: #{i}"
  i += 1 # update
end

puts "The end"

# if / unless
# while / until (continues running until its true)

i = 0
until i == 5
  puts "i: #{i}"
  i += 1
end

# control-c to get out of infinite loop

# Iterators #######################################

5.times do
  puts "OMG"
end

5.times { puts "No way!" }

5.times do |j|
  puts "j: #{j}"
end

10.downto(0) do |count|
  puts count
end
puts "Blast off"

# For loops ################
# don't use these

for n in 0..5 #ranges
  puts n
end

# Random numbers ###############
puts Random.rand()
Random.rand(40) # random whole number from 0 to 40
Random.rand(12..60) # random number in range 12 and 60
