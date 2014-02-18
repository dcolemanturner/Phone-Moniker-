class PhoneNumberController < ApplicationController
  def index
  	#nothing here since we aren't doing anything yet on the index page from the backend.
  end

  def show
		#class variables are available in the class only
		phone_num = []
		phone_num.push(params[:a])
		phone_num.push(params[:b])
		phone_num.push(params[:c])
		phone_num.push(params[:d])
		phone_num.push(params[:e])
		phone_num.push(params[:f])
		phone_num.push(params[:g])
		phone_num.join
		@phone_number = PhoneNumber.new
		@answers = @phone_number.search(3, phone_num)
		@first_answers = @answers.fetch(0);
		@second_answers = @answers.fetch(1);
	end
end
