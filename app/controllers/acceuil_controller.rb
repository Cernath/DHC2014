class AcceuilController < ApplicationController
  def home
    @maladie=Disease.new();
    #@result = request @result.ip
    @location = Geocoder.coordinates('195.25.102.190')
    @result = Geocoder.search(@location)
    @hash = Gmaps4rails.build_markers(@maladie) do |maladie, marker|
		marker.lat @location[0]
		marker.lng @location[1]
		marker.infowindow @result
		marker.json({titre: "test" })
		
    end
   @circle=[];
   @circle.each do |circle|
		circle.lat  @location[0]
		circle.lng  @location[1]
		circle.radius 10000
	end
    
     
  end

  def show
  end
  
  
  
  
  
end
