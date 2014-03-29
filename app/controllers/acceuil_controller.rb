class AcceuilController < ApplicationController
  def home
    @maladie=Disease.new();
    @circle=Hash.new(5)
    i=0
    #@result = request @result.ip
    @location = Geocoder.coordinates('195.25.102.190')
    @result = Geocoder.search(@location)
    @hash = Gmaps4rails.build_markers(@maladie) do |maladie, marker|
		marker.lat @location[0]
		marker.lng @location[1]
		marker.infowindow "coucou"
		marker.json({titre: "test" })
		@circle[i]= { lat: @location[0], lng: @location[1],radius: 1000 }
		i=i+1
    end
  end

  def show
  end
  
  
  
  
  
end
