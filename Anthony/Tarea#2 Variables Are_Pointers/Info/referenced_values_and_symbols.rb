# variables are just pointers to an object in memory


# instantiate a new string and point 'a' to that object in memory
a = "string1"
# instantiate a new string(different object in memory)
# with the same value as the one before, and point 'b'
# to that object in memory
b = "string1"
a.object_id == b.object_id # => false
a == b # => true
a += " fran" # => "string1 fran"
a.object_id # a new object id
# but 'b' remains the same
b # => "string1"
a.object_id == b.object_id # => false
#################################################################
a = "string1" # create a new string and point 'a' to that object
b = a # point 'b' to the same object as 'a'
a.object_id == b.object_id # => true
# assign to 'a' the result of concatenating the value of 'a' and the string ' fran'
a += " fran" # => "string1 fran"
b # => "string1"
a.object_id == b.object_id # => false
#################################################################
a = "string1"
b = a
# call upcase! method which modifies the current object (reuses the space in memory)
a.upcase! # => "STRING1"
b # => "STRING1"
a.object_id == b.object_id # => true
#################################################################
# symbols are inmutable objects (can't be modified)
# symbols are singleton objects
:a # a symbol
:a # the same symbol as before
:a.object_id == :a.object_id # => true
"a".object_id == "a".object_id # => false
a = :a
b = :b
a.object_id == b.object_id # => true