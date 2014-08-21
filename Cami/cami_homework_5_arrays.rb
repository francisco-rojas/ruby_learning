the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages

puts "Original Exercise"
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
for number in the_count
  puts "This is count #{number}"
end

puts "Change the first for number in the_count 
to be a more typical .each style loop like the others."
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
the_count.each do |num|
	puts  "This is count #{num}"
end
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

puts "Original Exercise"
the_count.each {|i| puts "This is count #{i}" }
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
# same as above, but in a more Ruby style
# this and the next one are the preferred 
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}" }
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements.push(i)
end
elements.each {|i| puts "Element was: #{i}" }
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

# Take a look at how you used (0..5) in the last for-loop. 
#Look up Ruby's "range operator" (.. and ...) online to see what it does.
(0...5).each do |i| 	
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements.push(i)
end
elements.each {|i| puts "Element was: #{i}" }
puts "Exercise number 2"

#A Range represents an interval—a set of values with a beginning and an end. 
#Ranges may be constructed using the s..e and s...e literals, or with ::new. 
#anges constructed using .. run from the beginning to the end inclusively. 
#Those created using ... exclude the end value. When used as an iterator, 
#ranges return each value in the sequence.

#Adding Items to Arrays¶ ↑
#
#Items can be added to the end of an array by using either push or <<
#
#arr = [1, 2, 3, 4]
#arr.push(5) #=> [1, 2, 3, 4, 5]
#arr << 6    #=> [1, 2, 3, 4, 5, 6]
#unshift will add a new item to the beginning of an array.
#
#arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
#With insert you can add a new element to an array at any position.
#
#arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
#Using the insert method, you can also insert multiple values at once:
#
#arr.insert(3, 'orange', 'pear', 'grapefruit')
##=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
