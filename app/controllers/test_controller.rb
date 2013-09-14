class TestController < ApplicationController
	def check_in
	end
	def verify
		if(params[:checked_in])
			@string = "yes"
		else
			@string = "no"
		end
	end

