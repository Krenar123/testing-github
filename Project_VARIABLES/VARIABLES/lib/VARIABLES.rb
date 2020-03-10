#
#
# You can make changes wherever you want and lets write some tests
#
#

require "VARIABLES/version"

module VARIABLES
# defining class
class Cat
	# defined constant variable speed that it will be default
	DEFSPEED = 10

	# defining global variable
	$global_var = "I'm global variable"

	# defining class variable
	@@legs = 4
	@@tail = 1
	@@eyes = 2
	@@mouth = 1
	@@sound = "Meow"

	attr_reader :speed
	# defining initialize object method which takes arguments and put their value on the instance variable
	def initialize(age, weight, speed = DEFSPEED) # I added speed instance variable and to be default 10 if we dont give our parameters
		@age = age
		@weight = weight
		@speed = speed
	end

	# defining read object method which reads the instance varibles
	def read
		puts "Age of the cat is: #{@age}, and the weight is: #{@weight}."
	end

	# defining write object method which writes values with arguments for instance variables
	def write(age, weight)
		@age = age
		@weight = weight
 	end

  # defining read_global object method for reading the global variable from the object
	def read_global
		puts "This is your request: #{$global_var}"
	end

	# defining class method organs, using class variables
	def self.organs
		puts "The cat has #{@@legs} legs, #{@@tail} tail, #{@@eyes} eyes, #{@@mouth} mouth and it soud is #{@@sound}."
	end
end

# Creating an object named maks and reding it's initializing values
maks = Cat.new(1, 3)
maks.read

# Test 1 (Testing the global variable, calling it directly and calling it with an object)
puts $global_var
maks.read_global

puts "Maks has getting older and he has gained some weight."
maks.write(2, 6)
maks.read

# maks.organs throws an error because self.orgnas is a class method and it can't be used from an object

#Calling the class method orgnas
Cat.organs
end
