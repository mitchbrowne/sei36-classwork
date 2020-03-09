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

Array = [] or array = Array.new

Length of Array:
bros.size
bros.length
bros.count

Split string to array:
string.split ' '
array = %w(Groucho Harpo Chico)
array = %w[Groucho Harpo Chico]
array = %w/Groucho Harpo Chico/
array = %w{Groucho Harpo Chico}

Get element:
bros[0]
get 'nil' if index out of array
bros.first
bros.last
bros[-1]
bros[-2]

Ranges:
0..20 (from 0 to 20)
range = 1..20
range.class = Range
array = (1..20).to_a    -(Will give array with numbers 1 to 20)

Introspection:
array.class     - gives class type of object
array.methods    -gives list of everything you can do on this object

Arrays:
array[3]
array[3..5]   - start at index 3, end at 5
array[3, 5]   - start at index 3, provide 5 following numbers
array[75] => nil
array.fetch 75 => crashes program if doesn't exist (likely won't need it.......)
[1, 2] + [3, 4] => [1, 2, 3, 4]
[1, 2, 3] - [2] => [1, 3]
[1, 2, 3] * 10 => [1, 2, 3, 1, 2, 3, 1, 2, 3] etc....
array.push 'Groucho'
array << 'Zeppo'    - appends 'Zeppo'
array << 'Zeppo' << 'Garpo'   - appends by chaining

array.unshift 'Mumma'  - prepends 'Mumma'
array.shift   - removes first element

array.insert 1, 'Zeppo'   - adds Zeppo at index 1
array.delete_at 2     - removes element at index 2
array.delete 'Zeppo'    - removes zeppo

These methods are 'Non-destructive'
array.shuffle     - shuffles array in random order
array.sample    - gets random element back

Destructive methods have a ! (bang) at the end


requires 'pry'
binding.pry     - stops program where you are and allows you to play around
whereami
ls    - shows variables available
cd variable     - you go into variable and can say 'ls' to show all methods available


array.flatten     - removes any outside arrays of nested arrays



HASHES
Just an associative array (i.e. an object...)
Can't put methods in a HASH, can only store values

Hash Literal:
groucho = {}
groucho = {
  "name" => "Groucho",   # => is called a 'Hash Rocket'
  "vice" => "cigars",
  "instrument" => "guitar"
}
groucho["name"]

groucho.methods
groucho.size
groucho.keys
groucho.values

groucho["religion"] = "none"    - to add key value
groucho.delete "religion"

iterating through hash provides both key and value
groucho.each do |k, v|
  puts "key: #{ k }, value: #{ v }"
end

groucho.values.each do |value|
  puts value
end



SYMBOLS
Strings that don't take up ruby memory.
Symbols get a unique object id for all of the same symbol key
:symbol
string.to_sym     - converts string to symbol
:string.to_s      - converts symbol :string to string


groucho = {
  :name => "Groucho",
  :vice => "cigars",
  :instrument => "guitar"
}

groucho.merge({:otherName => 'Micko'})    - non-destructive, add bang for destruction!


a 'predicate' method can only return true or false, shown by a '?'

[1, 2] & [2, 3] --> [2] what numbers are in the left section and the right section, get back array with intersected elements

[1, 2] | [2, 3] --> [1, 2, 3]


ARGV
Get arguments from initialising ruby program


Save output of program
ruby file.rb > file.txt

SERVERS
python -m SimpleHTTPServer
go to browser and look up localhost:8000 (replace 8000 with command line output)
