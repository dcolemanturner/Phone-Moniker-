#Meetup.rb test cases
require_relative "../meetup"

describe  PhoneNumber  do
	before :each do
    	@phonenum = PhoneNumber.new
	end

	describe "#search" do
		it "should return a valid 1 letter word when searching for 1 digits" do
			answer = @phonenum.search 1, '2436774'
			answer.should include("a")
			answer.should_not include("i")
		end

		it "should return a valid 2 letter word when searching for 2 digits" do
			answer = @phonenum.search 2, '2713321'
			answer.should include("as")
			answer.should_not include("to")
			answer.should_not include("at")
		end

		it "should return a valid 3 letter word when searching for 3 digits" do
			answer = @phonenum.search 3, '8436398'
			answer.should include("the")
			answer.should_not include("new")
			answer.should_not include("thy")
		end

		it "should return a valid 4 letter word when searching for 4 digits" do
			answer = @phonenum.search 4, '6398222'
			answer.should include("next")
			answer.should_not include("sock")
			answer.should_not include("nuts")
		end
=begin
		it "should NOT return a valid 4 letter word when searching for 3 digits" do
			answer = @phonenum.search 3, '8436398'
			#replace with length based function
			#answer.should_not include("next")
		end

		it "should NOT return a valid 3 letter word when searching for 4 digits" do
			answer = @phonenum.search 4, '8436398'
			#replace with length based function
			#answer.should_not include("the")
		end
=end
	end

end