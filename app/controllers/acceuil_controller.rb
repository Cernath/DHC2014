class AcceuilController < ApplicationController
  def home
     @maladie=Disease.all
     @result = request.location
     @location = Geocoder.coordinates('195.25.102.190')
     @hash = Gmaps4rails.build_markers(@maladie) do |maladie, marker|
		marker.lat @location[0]
		marker.lng @location[1]
		marker.infowindow  maladie.description
		marker.json({titre:  maladie.titre})
		marker.picture({
		 "url" => "/assets/markerIcons/largeTDYellowIcons/marker#{nb_colocs_supp}.png", 
		 "width" => 30,
		 "height" => 30
		})
    end
    
    @circle = Gmaps4rails.build_markers(@colocation) do | maladie, circle|
		circle.lat  maladie.latitude
		circle.lng  maladie.longitude
	end
    
     
  end

  def show
  end
end
