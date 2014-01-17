#Meetup.rb test cases
require_relative "../meetup"

describe  PhoneNumber  do
	before :each do
    	@phonenum = PhoneNumber.new
	end

	describe "#dictionaryFirstWordMatch" do
		it "should return an array" do
			answer = @phonenum.dictionaryFirstWordMatch '2', 'and'
			answer.should be_kind_of(Array)
		end
		it "should return valid A, B. C words when querying 2" do
			answer = @phonenum.dictionaryFirstWordMatch '2', 'and'
			answer += @phonenum.dictionaryFirstWordMatch '2', 'bun'
			answer += @phonenum.dictionaryFirstWordMatch '2', 'cat'
			answer += @phonenum.dictionaryFirstWordMatch '2', 'not'
			answer.should include("and", "bun", "cat")
			answer.should_not include("not")
		end
		it "should return valid D, E, F words when querying 3" do
			answer = @phonenum.dictionaryFirstWordMatch '3', 'den'
			answer += @phonenum.dictionaryFirstWordMatch '3', 'eat'
			answer += @phonenum.dictionaryFirstWordMatch '3', 'fat'
			answer += @phonenum.dictionaryFirstWordMatch '3', 'not'
			answer.should include("den", "eat", "fat")
			answer.should_not include("not")
		end
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
	end

end