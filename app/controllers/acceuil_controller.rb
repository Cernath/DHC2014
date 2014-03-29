class AcceuilController < ApplicationController
  def home

    @total= Global.all;

    @circle=Hash.new()

    @gastro=Disease.where(:nameDiease => "gastro").count

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

    @hash = Gmaps4rails.build_markers(@total) do |total, marker|
		marker.lat Geocoder.coordinates(total.ville)[0]
		marker.lng Geocoder.coordinates(total.ville)[1]
		marker.infowindow "Nombre de #{@maladieMax} : #{@max}"
		marker.json({titre: "test" })
		@circle[i]= { lat: Geocoder.coordinates(total.ville)[0], lng: Geocoder.coordinates(total.ville)[1],radius: 10000 }
		i=i+1
    end
    if ( params[:Grippe] == '1')
    	redirect_to "ok"
    end
  end
  
  def show
  end
end
