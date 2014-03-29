class AcceuilController < ApplicationController
  def home
<<<<<<< HEAD
  	
=======
     @colocation=[]
     @hash = Gmaps4rails.build_markers(@colocation) do |maladie, marker|
		marker.lat maladie.latitude
		marker.lng  maladie.longitude
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
    
     
>>>>>>> c1706d97bfc8e31b29eac2b8969decb15d06114f
  end

  def show
  end
end
