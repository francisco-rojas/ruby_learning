# Exercise 1: call the method "identify_number_type" and pass it an collection
# containing the number 1 through 10, and a block that returns true or false
# if the number is even or odd respectively so it properly identifies
# even numbers and odd numbers in the collection.
# HINT 1: check the Ruby mod operator '%'
# HINT 2: blocks, just like methods, return the value of the last statement
# excecuted or from the 'return' keyword

# Exercise 2: complete the 'print_even_numbers' method so it receives a collection
# and a block, and prints only the even numbers in the collection.
# HINT: you need an explicit block here

# From the Book "Metaprogramming Ruby" read the section "Blocks Are Closures"
# and the section "Callable Objects" before next class

# Exercise 3: taking advantage of closures complete the "is_even_number?"
# methoda to print "Yes" if the block with the CAPTURED local variable
# returns true

# Exercise 4: write a method called "identify_number_type_with_lambda"
# that does exactly the same as "identify_number_type" but instead of using
# blocks use a lambda object

# Exercise 5: write a method called "print_even_numbers_with_proc" that
# does exactly the same as "print_even_numbers" but instead of using blocks
# use a proc object
class Blocker
	def identify_number_type(collection)
		collection.each do |number|
			if yield number
				puts "#{number} is even"
			else
				puts "#{number} is odd"
			end
		end
	end

	def identify_number_type_with_lambda(collection, lambda_obj)
		collection.each do |number|
			if lambda_obj.call(number)
				puts "#{number} is even"
			else
				puts "#{number} is odd"
			end
		end
	end

	def print_even_numbers(collection, &block)
		collection.each(&block)
	end

	def print_even_numbers_with_proc(collection, proc_obj)
		collection.each(&proc_obj)
	end

	def is_even_number?
		puts "Yes" if yield
	end
end

blocker = Blocker.new
collection = (1..10)
puts '### Calling identify_number_type ###'
blocker.identify_number_type(collection) { |number| number % 2 == 0 }

puts '### Calling print_even_numbers ###'
blocker.print_even_numbers(collection) { |number| puts number if number % 2 == 0 }

puts '### Calling is_even_number? ###'
local_var = 2
blocker.is_even_number? { local_var % 2 == 0 }

puts '### Calling identify_number_type_with_lambda ###'
lambda_obj = -> (number) { number % 2 == 0 }
blocker.identify_number_type_with_lambda(collection, lambda_obj)

puts '### Calling print_even_numbers_with_proc ###'
proc_obj = proc { |number| puts number if number % 2 == 0 }
blocker.print_even_numbers_with_proc(collection, proc_obj)
