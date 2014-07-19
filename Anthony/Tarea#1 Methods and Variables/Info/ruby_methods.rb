# defining a class
class MyClass
  # defining a class method
  def self.my_method
    # ruby methods automatically return the result
    # of the last statement
    puts "Called the my_method 'class method' on an object of class: #{self.class}"
    self
  end

  # defining an instance method
  def my_method
    # but you can also explicitly use the
    # return keyword to return from the method
    puts "Called the my_method 'instance method' on an object of class: #{self.class}"
    return self
  end

  def another_instance_method
    self
  end

  def self.another_class_method
    self
  end
end

# calling a class method
MyClass.my_method

# calling an instance method
MyClass.new.my_method

# try calling an instance method on a class
begin
  MyClass.another_instance_method
rescue => e
  puts
  puts e.message
  puts "Ooops! you tried to call an instance method on a class"
  puts
end

# try calling a class method on an instance
begin
  MyClass.new.another_class_method
rescue => e
  puts
  puts e.message
  puts "Ooops! you tried to call a class method on an instance"
  puts
end