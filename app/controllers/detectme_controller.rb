class DetectmeController < ApplicationController
	def new		
	end
	def create
		if @disease.save
			redirect_to root_path
		else
			render '/detectme/index'
		end
	end
end
