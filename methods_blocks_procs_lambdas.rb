class Blocker
	def method_with_implicit_block
		yield if block_given?
	end

	def method_with_implicit_block_with_params
		yield("Hello") if block_given?
	end

	def method_with_explicit_block(&block)
		puts block.class if block
		block.call if block
	end

	def method_with_explicit_block_with_params(&block)
		puts block.class if block
		block.call("Hola") if block
	end	

	def method_with_explicit_block2(&block)
		[1, 2, 3].each(&block)
	end

	def method_with_explicit_block3(&block)
		[3, 2, 1].each_with_index(&block)
	end
end

blocker = Blocker.new
blocker.method_with_implicit_block
blocker.method_with_implicit_block { puts "Hello World" }
blocker.method_with_implicit_block do 
	puts "Hola" 
	puts "Mundo"
end

blocker.method_with_explicit_block
blocker.method_with_explicit_block { puts "Hello World2" }
blocker.method_with_explicit_block do 
	puts "Hola" 
	puts "Mundo2"
end

blocker.method_with_implicit_block_with_params { |greeting| puts "#{greeting} World with params" }
blocker.method_with_explicit_block_with_params { |greeting| puts "#{greeting} Mundo con params" }

blocker.method_with_explicit_block2 { |item| puts item }
blocker.method_with_explicit_block3 { |item, index| puts "#{item} #{index}" }