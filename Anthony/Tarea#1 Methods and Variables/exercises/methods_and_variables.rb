# 1- Read the following links:
#    http://www.rubyist.net/~slagell/ruby/accessors.html
#    http://www.rubyist.net/~slagell/ruby/objinitialization.html
#DONE

# 2- What's the difference between: atrr_accessor, atrr_reader and atrr_writer?
# With "atrr_reader" & "atrr_writer" you can individually define the getters and setters for 
# an instances variable, but you can do both of these methods by using just "atrr_accessor".
# DONE

# 3- Create a class called Account that:
#       -receives a parameter called 'number' when initializing it and sets
#        a read only instance variable called 'number'
#DONE

# 4- Create a read only attribute(instance variable) called 'balance'
#DONE

# 5- Create an instance method called 'deposit' that:
#       -receives a parameter called 'amount'
#       -returns the result of adding amount and the balance attribute
#DONE

# 6- Create an editable (read/write) attribute called 'pin'
#DONE

# 7- Create an instance method called 'withdraw' that:
#       -receives a parameter called 'amount'
#       -returns the result of substracting amount to the balance attribute
#        (don't worry about validations yet)
#DONE

# 8- Add a line to every method that displays in the console a message
#    with the name of the method being called and the old as well as the new
#    value of the variable(s) being modified
#DONE

# 9- Create an instance of the class Account and pass the number 12345 to the initializer
#DONE

# 10-Set the pin to 1111
#DONE

# 11-Make a deposit of 10000
#DONE

# 12-Withdraw 4000
#DONE

# 13-Reset the pin to 2222
#DONE

# 14-Read the account number
#DONE

# 15-Read the account balance
#DONE

# 16-What happens if you try to set the account number or the account balance?
#Ruby will jump with an error message.
#DONE

# 17-How can the balance be modified?
#Either by hardcoding it or by defining the setter method for the attribute.
#DONE