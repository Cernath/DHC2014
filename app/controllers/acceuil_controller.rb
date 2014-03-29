class AcceuilController < ApplicationController
  def home
    @maladie= Global.all;

    @circle=Hash.new()

    @gastro=Disease.where(:nameDiease => "gastro").count

    i=0
    #@result = request @result.ip
    @location = Geocoder.coordinates('82.235.183.181')
    @result = Geocoder.search(@location)
    @hash = Gmaps4rails.build_markers(@maladie) do |maladie, marker|
		marker.lat @location[0]
		marker.lng @location[1]
		marker.infowindow "Nombre de gastros : #{@gastro}"
		marker.json({titre: "test" })
		@circle[i]= { lat: @location[0], lng: @location[1],radius: 10000 }
		i=i+1
    end
  end
  
  def show
  end
  
  
  
  
  
end
