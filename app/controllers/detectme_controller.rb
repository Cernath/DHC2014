class DetectmeController < ApplicationController
	def new		
	   @data= Epidemicdata.new
	   @disease=Epidemicdata.Disease.new
	   @symptome=Epidemicdata.Symptom.new
	end
	def create
	    @result[0].data.first[1][2].first[1]
	    @data=Epidemicdata.new(params.required(:epidemicdata).permit(:date))
	    @disease=Epidemicdata.Disease
	    @symptome=Epidemicdata.Symptom
	    
	    @data.City.nameCity =  @result[0].data.first[1][2].first[1]
	    @data.Department.nameDeprtment =  @result[0].data.first[1][3].first[1]
	    @data.Region.nameRegion =  @result[0].data.first[1][4].first[1]
	    
	    @data.Country.nameCountry = @result[0].data.first[1][5].first[1] 
	    @data.Country.shortCountry = @result[0].data.first[1][5].take(2)[1][1] 
		if @data.save
			redirect_to root_path
		else
			render '/detectme/index'
		end
	end
end
