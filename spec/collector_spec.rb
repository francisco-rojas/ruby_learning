require_relative 'spec_support'
require_relative '../collector'

describe Collector do
  before do
    @collector = Collector.new (1..10)
  end

  it "returns print items in the collection and returns the collection" do
    result = @collector.print_collection_elements
    result.must_equal (1..10)
  end

  it "returns even number from the collection" do
    result = @collector.collect_even_numbers
    result.must_equal [nil, 2, nil, 4, nil, 6, nil, 8, nil, 10]
  end

  it "returns even number from the collection" do
    result = @collector.select_even_numbers
    result.must_equal [2, 4, 6, 8, 10]
  end

  it "duplicates each item of the collection" do
    result = @collector.duplicate_collection_items
    result.must_equal [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
  end

end