class PhoneNumberController < ApplicationController
  def index
  	#nothing here since we aren't doing anything yet on the index page from the backend.
  end

  def show
		#class variables are available in the class only
		da_number = params[:number][:phone_number]
		da_size = params[:number][:size].to_i
		@phone_number = PhoneNumber.new
		@answers = @phone_number.search(da_size, da_number)
		@first_answers = @answers.fetch(0);
		@second_answers = @answers.fetch(1);
	end
end
