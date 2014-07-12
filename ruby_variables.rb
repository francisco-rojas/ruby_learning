class MyClass
  @@my_class_var = 1

  # calling the instance variable directly is not
  # the same as calling it through the getter method
  def my_method
    local_var1 = 10
    local_var1 + @my_instance_var
  end

  # calling the instance variable directly is not
  # the same as calling it through the getter method
  def another_method
    local_var2 = 10
    local_var2 + my_instance_var
  end

  # getter
  # gets the value of the instance variable @my_instance_var
  def my_instance_var
    @my_instance_var * 2
  end

  # setter
  # sets the value of the instance variable @my_instance_var=
  def my_instance_var=(val)
    @my_instance_var = val
  end

  # getter
  # gets the class variable
  def my_class_var
    @@my_class_var
  end
end

# create an instance of MyClass
instance1 = MyClass.new
# set @my_instance_var using the setter
instance1.my_instance_var = 3
puts
puts "Called the my_instance_var setter method with a value of 3"
puts "Called the my_instance_var getter: #{instance1.my_instance_var}"
puts "my_method instance method: #{instance1.my_method}"
puts "another_method instance method: #{instance1.another_method}"
puts "the class variable value is: #{instance1.my_class_var}"

# create an instance of MyClass
instance2 = MyClass.new
# set @my_instance_var using the setter
instance2.my_instance_var = 5
puts
puts "Called the my_instance_var setter method with a value of 5"
puts "Called the my_instance_var getter: #{instance2.my_instance_var}"
puts "my_method instance method: #{instance2.my_method}"
puts "another_method instance method: #{instance2.another_method}"
puts "the class variable value is: #{instance2.my_class_var}"
