ruby   -in command line
control + D   -to get out of ruby
irb   -to use ruby instantly
  -don't run 'sudo'
  -use gem system to install ruby systems like pry
get install pry
pry   -to use ruby instantly, looks nicer than irb
can require pry which imports pry into our file/program by using "require 'pry'" and will pause in program at "binding.pry"

mathematics don't break down in ruby, can go as big as you want.
However, some numbers are still incorrect, 0.2 + 0.1 = 0.300000000004

Interpolation uses double "quotes", not back ticks
  Use " #{variable} "

Back ticks mean 'can you run this command line program for me'
  `ls -l` will run this command
  hence why ruby is so useful to make scripts that run command line methods

Ruby has strict equality, i.e. ==
<=> is a tie fighter

snake_case variables

You are always in an object in ruby, hence all functions are actually methods

Puts will always go to a new line, print will not.
Chomp removes the /n from a get() from user.

$variable_name is a global variable
ALL_UPPERCASE is a const variable

Implicit return => return the last line of code in a method
