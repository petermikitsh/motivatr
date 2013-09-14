class TestController < ApplicationController
	def check_in
		@lat = 37.783958
		@long = -122.392385
		@address = "1 Market St, San Francisco, CA 91405"
		
	end
	def verify
		puts "works"
		if(params[:checked_in]==true)
			@string = "yes"
			puts "yes"
		else
			@string = "no"
			puts "no"
		end
		respond_to do |format|
    	# The action 'vote' is called here.
			format.js
		end
	end
end

