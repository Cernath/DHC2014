class GlobalsController < ApplicationController
  before_action :set_global, only: [:show, :edit, :update, :destroy]

  # GET /globals
  # GET /globals.json
  def index
    @globals = Global.all
  end

  # GET /globals/1
  # GET /globals/1.json
  def show
  end

  # GET /globals/new
  def new
    @global = Global.new
    @gastro=Symp.where(:maladie => 'gastro')
    @grippe=Symp.where(:maladie => 'grippe')
    @bronchiolite=Symp.where(:maladie => 'bronchiolite')

  end

  # GET /globals/1/edit
  def edit
  end

  # POST /globals
  # POST /globals.json
  def create 
    @location = Geocoder.coordinates('82.235.183.181')
    @result = Geocoder.search(@location)
    @global = Global.new(global_params)
    @global.ville =  @result[0].data.first[1][2].first[1]
    @global.departement =  @result[0].data.first[1][3].first[1]
    @global.region =  @result[0].data.first[1][4].first[1]
      
    @global.pays = @result[0].data.first[1][5].first[1] 
    

    respond_to do |format|
      if @global.save
        format.html { redirect_to @global, notice: 'Global was successfully created.' }
        format.json { render action: 'show', status: :created, location: @global }
      else
        format.html { render action: 'new' }
        format.json { render json: @global.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /globals/1
  # PATCH/PUT /globals/1.json
  def update
    respond_to do |format|
      if @global.update(global_params)
        format.html { redirect_to @global, notice: 'Global was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @global.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /globals/1
  # DELETE /globals/1.json
  def destroy
    @global.destroy
    respond_to do |format|
      format.html { redirect_to globals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global
      @global = Global.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_params
      params.require(:global).permit(:ville, :departement, :region, :pays, :date, :maladie)
    end
end
