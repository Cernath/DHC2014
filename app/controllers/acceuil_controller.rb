class AcceuilController < ApplicationController
  def home
    @maladie=Disease.new()
    @nbgastro=Disease.where(:nameDiease => "gastro").count
    @nbbronchiolites=Disease.where(:nameDiease => "bronchiolites").count
    @nbgrippes=Disease.where(:nameDiease => "grippes").count
    if(@nbgastro>@nbbronchiolites)
    	@max=@nbgastro
    	@maladieMax="gastros"
	else
		@max=@nbbronchiolites
		@maladieMax="bronchiolites"
	end
	if(@nbgrippes>@max)
		@max=@nbgrippes
		@maladieMax="grippes"
	end
    @circle=Hash.new()
    i=0
    #@result = request @result.ip
    @location = Geocoder.coordinates('82.235.183.181')
    @result = Geocoder.search(@location)
    @hash = Gmaps4rails.build_markers(@maladie) do |maladie, marker|
		marker.lat @location[0]
		marker.lng @location[1]
		marker.infowindow "Nombre de #{@maladieMax} : #{@max}"
		marker.json({titre: "test" })
		@circle[i]= { lat: @location[0], lng: @location[1],radius: 10000 }
		i=i+1
    end
    if ( params[:Grippe] == '1')
    	redirect_to "ok"
    end
  end

  def show
  end
end
