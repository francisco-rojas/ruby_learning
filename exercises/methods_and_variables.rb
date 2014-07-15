# 1- Read the following links:
#    http://www.rubyist.net/~slagell/ruby/accessors.html
#    http://www.rubyist.net/~slagell/ruby/objinitialization.html
# 2- What's the difference between: atrr_accessor, atrr_reader and atrr_writer?
# 3- Create a class called Account that:
#       -receives a parameter called 'number' when initializing it and sets
#        a read only instance variable called 'number'
# 4- Create a read only attribute(instance variable) called 'balance'
# 5- Create an instance method called 'deposit' that:
#       -receives a parameter called 'amount'
#       -returns the result of adding amount and the balance attribute
# 6- Create an editable (read/write) attribute called 'pin'
# 7- Create an instance method called 'withdraw' that:
#       -receives a parameter called 'amount'
#       -returns the result of substracting amount to the balance attribute
#        (don't worry about validations yet)
# 8- Add a line to every method that displays in the console a message
#    with the name of the method being called and the old as well as the new
#    value of the variable(s) being modified
# 9- Create an instance of the class Account and pass the number 12345 to the initializer
# 10-Set the pin to 1111
# 11-Make a deposit of 10000
# 12-Withdraw 4000
# 13-Reset the pin to 2222
# 14-Read the account number
# 15-Read the account balance
# 16-What happens if you try to set the account number or the account balance?
# 17-How can the balance be modified?