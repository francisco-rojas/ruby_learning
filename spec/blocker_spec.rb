require_relative 'spec_support'
require_relative '../blocker'

describe Blocker do
  before do
    @blocker = Blocker.new
    @collection = (1..10)
  end

  it "returns true or false if a number in the collection is even or odd" do
    result = @blocker.identify_number_type(@collection){ |number| number % 2 == 0 }
    result.must_be_instance_of Array
    result.must_equal [false, true, false, true, false, true, false, true, false, true]
  end

  it "returns true or false if a number in the collection is even or odd" do
    lambda_obj = -> (number) { number % 2 == 0 }
    result = @blocker.identify_number_type_with_lambda(@collection, lambda_obj)
    result.must_be_instance_of Array
    result.must_equal [false, true, false, true, false, true, false, true, false, true]
  end

  it "returns only the even numbers in the collection" do
    result = @blocker.get_even_numbers(@collection) { |number| number if number % 2 == 0 }
    result.must_be_instance_of Array
    result.must_equal [2, 4, 6, 8, 10]
  end

  it "returns only the even numbers in the collection" do
    proc_obj = proc { |number| number if number % 2 == 0 }
    result = @blocker.get_even_numbers_with_proc(@collection, proc_obj)
    result.must_be_instance_of Array
    result.must_equal [2, 4, 6, 8, 10]
  end

  it 'returns true if the captured variable is an even number and false otherwise' do
    local_var1 = 2
    result1 = @blocker.is_even_number? { local_var1 % 2 == 0 }
    result1.must_equal true
    local_var2 = 3
    result2 = @blocker.is_even_number? { local_var2 % 2 == 0 }
    result2.must_equal false
  end
end