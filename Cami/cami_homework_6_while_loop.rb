class While_loop
	def nums (a)
		i = 0
		numbers = []

		while i <=  a
		puts "At the top i is #{i}"
		numbers.push(i)

		i += 1
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
		end
		puts "The numbers: "
		numbers.each {|num| puts num }
	end




end

num = While_loop.new
num.nums(6)

puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
																			
arr_test = []
(0..6).each do |i|
puts "At the top i is #{i}"
arr_test <<(i)
puts "Numbers now: ", arr_test
puts "At the bottom i is #{i}"
end
arr_test.each {|i| puts "#{i}" }