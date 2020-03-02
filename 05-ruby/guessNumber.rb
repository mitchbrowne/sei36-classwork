# # Title: Guess The Number
#
# ### Activity:
# - You are to generate a basic "guess my number" game.  The computer will pick a random number between 0 and 10.  The user will guess the number until they guess correctly.
#
# ### Specification:
# - The user should be asked to guess a number
# - If the user's guess is correct, the user should see a congratulatory message
# - If the user's guess is not correct, the user should be asked to guess the number again.
#
# ### Extensions:
# - Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# - Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"

won = false
print "What is the max value you want to guess in: "
maxNumber = gets.to_i
secretNumber = rand 0..maxNumber
print "Guess a number between 0 and #{maxNumber}: "

guess = gets.to_i


# guess = maxNumber / 2


until guess == secretNumber
  if guess < secretNumber
    print "Wrong, guess higher! "
    guess = guess + ((maxNumber - guess) / 2).to_i
  elsif guess > secretNumber
    print "Wrong, guess lower! "
    guess = gets.to_i
  end
end

puts "#{guess} was the correct guess!"

# until won
#   guess = gets.to_i
#   if (guess == number)
#     puts "#{guess} was the correct guess!"
#     won = true
#   else
#     print "Wrong, guess higher! " if guess < number
#     print "Wrong, guess lower! " if guess > number
#   end
# end
