#!/usr/bin/ruby

BEGIN { #Runs before the program starts
   # This is a Ruby comment
	=begin
		This
		is
		a
		block
		comment
	=end
	
	puts "Running the beginning..."
	
	=begin
		#Integer Numbers
		123                  # Fixnum decimal
		1_234                # Fixnum decimal with underline
		-500                 # Negative Fixnum
		0377                 # octal
		0xff                 # hexadecimal
		0b1011               # binary
		?a                   # character code for 'a'
		?\n                  # code for a newline (0x0a)
		12345678901234567890 # Bignum
		
		#floating Numbers
		123.4                # floating point value
		1.0e6                # scientific notation
		4E20                 # dot not required
		4e+20                # sign before exponential
	=end

}


$basics_global = 55 #global variable

class Basics

	@@num_of_basics = 0 #class variable
	
	PI_CONSTANT = 3.14

	def initialize(id, name, value)
		@bas_id = id #instance variable
		@bas_name = name
		@bas_value = value
		@@num_of_basics += 1
	end

	
	def print_multiple_lines
		print << label # print a string from multiple lines
			This is the first way of creating
			here document ie. multiple line string.
		label
	end
	
	def print_single
		puts "Hello Ruby!"
	end
	
	def print_constant
		puts "Here is pie #{PI_CONSTANT}"
	end
	
	def print_global
		puts "#$basics_global" #string interpolation to inject global variable
	end
	
	def display_instance_vars
		puts "Basic id is #@bas_id"
		puts "Basic name is #@bas_name"
		puts "Basic value is #@bas_value"
	end
	
	def print_expression
		puts "expression value #{34*60*60}"
	end
	
end

# create object instance and invoke methods
object1 = Basics.new("1", "Apple", 5);

object1.display_instance_vars()
object1.print_multiple_lines()

#Array
ary = ["fred", 10, 3.14, "This is a string", "last element", ]

ary.each do |i|
	puts i
end

#Hash
hash = colors = {	"red" => 0xf00,
					"green"=> 0x0f0, 
					"blue" => 0x00f
				}
				
hash.each do |key, value|
	print key, " is ", value, "\n"
end

#Ruby Ranges
(10..15).each do |n|
	print n, ' '
end

#Ruby parallel assignment
a, b, c = 10, 20, 30

#variable swap
a, b = b, c



END {
   #This code runs when a program ends
}