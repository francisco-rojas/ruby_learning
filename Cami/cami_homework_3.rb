# Read: http://www.rubyist.net/~slagell/ruby/strings.html
# analize the following code and add or remove the bang (!) methods
# wherever necessary

class MyGame
	def initialize(user_name)
		@user_name = user_name
		@user_name.downcase!
	end

	# use the upcase or the upcase! method where required
	# to ensure the following expected output:
	# ex: "FRAN, you just entered LIVING ROOM"
	def upcased_enter(room_name)
		#@user_name.upcase
		@user_name.upcase!
		puts "#{@user_name}, you just entered #{room_name.upcase}"
		puts "user name #{@user_name.object_id}"
		puts "room name #{room_name.object_id}"
		still_valid?
	end

	# use the downcase or the downcase! method where required
	# to ensure the following expected output:
	# ex: "fran, you just entered living room"
	def downcased_enter(room_name)
		puts "#{@user_name}, you just entered #{room_name.downcase!}"
		puts "user name #{@user_name.object_id}"
		puts "room name #{room_name.object_id}"
		still_valid?
	end

	# use downcase, downcase!, upcase, upcase! where required
	# to ensure the following expected output:
	# ex: FRAN, run quickly towards NORTH. I said QUICKLY! towards NORTH!
	def run(direction, speed)
		puts "#{@user_name.upcase}, run #{speed.downcase} towards #{direction.upcase!}. I said #{speed.upcase}! towards the #{direction.upcase}!"
		puts "user name {@user_name.object_id}"
		puts "speed1 #{speed.object_id}"
		puts "direction1 #{direction.object_id}"
		puts "speed2 #{speed.object_id}"
		puts "direction2 #{direction.object_id}"
		still_valid?
	end

	# use this method to validate your answer
	# it should always return true if not then
	# reconsider you changes
	def still_valid?
		puts @user_name.downcase == @user_name
	end
end

game = MyGame.new("fran")
game.upcased_enter("living room")
game.downcased_enter("LIVING ROOM")
game.run("NOrtH", "QuicKLY")
game.still_valid?
