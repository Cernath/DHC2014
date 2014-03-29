class SympsController < ApplicationController
  before_action :set_symp, only: [:show, :edit, :update, :destroy]

  # GET /symps
  # GET /symps.json
  def index
    @symps = Symp.all
  end

  # GET /symps/1
  # GET /symps/1.json
  def show
  end

  # GET /symps/new
  def new
    @symp = Symp.new
  end

  # GET /symps/1/edit
  def edit
  end

  # POST /symps
  # POST /symps.json
  def create
    @symp = Symp.new(symp_params)

    respond_to do |format|
      if @symp.save
        format.html { redirect_to @symp, notice: 'Symp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @symp }
      else
        format.html { render action: 'new' }
        format.json { render json: @symp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /symps/1
  # PATCH/PUT /symps/1.json
  def update
    respond_to do |format|
      if @symp.update(symp_params)
        format.html { redirect_to @symp, notice: 'Symp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @symp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /symps/1
  # DELETE /symps/1.json
  def destroy
    @symp.destroy
    respond_to do |format|
      format.html { redirect_to symps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symp
      @symp = Symp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def symp_params
      params.require(:symp).permit(:maladie, :symp1, :symp2, :symp3, :symp4, :symp5)
    end
end
