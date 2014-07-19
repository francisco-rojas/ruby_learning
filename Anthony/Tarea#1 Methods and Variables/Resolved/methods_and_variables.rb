class Account
	attr_reader :number
	attr_reader :balance
	attr_accessor :pin

	def initialize (number)
		@number = number
		@balance = 0 
		puts "Status.. Calling method initialize with the parameter: #{@number}\n"
	end

	def inspect
		puts "Acount Number: #{@number}, with Balance: #{@balance}"
	end

	def deposit(amount)
		initial_bal = @balance
		@balance = amount + initial_bal
		# @balance += amount
		puts "Status.. Calling method deposit with the parameter: #{amount}, initial balance: #{initial_bal}, resulting balance: #{@balance}\n"
		return @balance
	end

	def withdraw(amount)
		initial_bal = @balance
		@balance = initial_bal-amount
		puts "Status.. Calling method withdraw with the parameter: #{amount}, initial balance: #{initial_bal}, resulting balance: #{@balance}\n"
		return @balance
	end

end


instance1 = Account.new (12345)
instance1.pin = 1111
puts "Status.. Setting up the pin number to 1111"
instance1.deposit(10000)
instance1.withdraw(4000)
instance1.pin = 2222
puts "Status.. Reseting the pin number to 2222"
puts "Status.. Displaying Account Information => Number: #{instance1.number}, with Balance: #{instance1.balance}"

