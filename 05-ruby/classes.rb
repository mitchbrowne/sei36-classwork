# A class is kind of like a hash -- it has key/value pairs to store.
# BUT you have to predefine the keys that are going to be used.
# A strict hash -- you have to predefine the shape.
# ALSO: unlike a hash, an object can have methods (functions inside it)

# Ruby is a Low Ceremony Language -- you can make new classes whenever you want, without much trouble

# Super class / parent class
class Actor
  def award_speech
    "I would like to thank my parents and my agent. We did it baby."
  end

  def deny_allegations
    "I deny that and I was drunk and I don't remember and he's not my type."
  end
end

class Stooge < Actor # Inherit
  def terrible?
    true
  end
end

class MarxBrother < Actor
  attr_accessor :name, :instrument, :vice # Macro to create the .name/@name getter and setter

  def initialize(n='', i='', v='making fun of authority')
    @name = n
    @instrument = i
    @vice = v
    @religion = "Atheist"
  end

  def play
    "My name is #{@name} and I play #{ @instrument }"
  end
end

groucho = MarxBrother.new
groucho.name= 'Groucho Julius Marx' # Syntactic sugar... makes assigning easier
groucho.instrument= 'guitar'
groucho.vice= 'cigars'

harpo = MarxBrother.new 'Harpo', 'harp', 'mutism'

require 'pry'
binding.pry
