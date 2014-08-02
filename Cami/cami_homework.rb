class Account

  attr_reader :number, :balance
  attr_accessor :pin #, :balance

  def initialize(number)
    @number = number #or number = number
    @balance = 0
    puts "number #{number}"
  end

  def owner
    @owner
  end
  def owner=(owner)
    @owner = owner
  end
  def deposit(amount)
    @balance = @balance + amount
    puts "result of #{balance}"
    @balance
  end

  def withdraw(amount)
    @balance =  @balance -  amount
    puts "result of #{balance}"
    @balance
  end
end

num = Account.new(12345)
num.deposit(10000)
num.withdraw(15000)
num.pin = 222
puts num.pin.to_s
puts num.pin.inspect
puts num.inspect
puts num.to_s
num.balance = 100
#puts "#{num.pin}"