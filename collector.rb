# http://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/
class Collector

	def initialize(collection)
		@collection = collection
	end

	# inject, reduce, sort, tap, include?
	def print_collection_elements
		@collection.each { |i| puts i }
	end

  def collect_even_numbers
    @collection.collect { |n| n if n % 2 == 0 }
  end

  def select_even_numbers
    @collection.select { |n| n % 2 == 0 }
  end


  def custom_select(&block)
    a = []
    @collection.each do |x|
      if block.call(x)
        a << x
      end
    end
    a
  end

  def duplicate_collection_items
  	@collection.map { |n| n * 2 }
  end

  def elements_to_string
    @collection.map(&:to_s)
  end

  def accumulate
    accumulator = 0
    @collection.each do |n|
      accumulator += n
    end
    accumulator
  end
end