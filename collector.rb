# http://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/
class Collector

	def initialize(collection)
		@collection = collection
	end

	# map, inject, reject, reduce, sort, tap, include?
	def print_collection_elements
		@collection.each { |i| puts i }
	end

  def collect_even_numbers
    @collection.collect { |n| n if n % 2 == 0 }
  end

  def select_even_numbers
    @collection.select { |n| n % 2 == 0 }
  end

  def duplicate_collection_items
  	@collection.map { |n| n * 2 }
  end
end