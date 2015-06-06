class ScreeningLocationsController < ApplicationController
  before_action :set_screening_location, only: [:show, :edit, :update, :destroy]

  # GET /screening_locations
  # GET /screening_locations.json
  def index
    @screening_locations = ScreeningLocation.all
  end

  # GET /screening_locations/1
  # GET /screening_locations/1.json
  def show
  end

  # GET /screening_locations/new
  def new
    @screening_location = ScreeningLocation.new
  end

  # GET /screening_locations/1/edit
  def edit
  end

  # POST /screening_locations
  # POST /screening_locations.json
  def create
    @screening_location = ScreeningLocation.new(screening_location_params)

    respond_to do |format|
      if @screening_location.save
        format.html { redirect_to @screening_location, notice: 'Screening location was successfully created.' }
        format.json { render :show, status: :created, location: @screening_location }
      else
        format.html { render :new }
        format.json { render json: @screening_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screening_locations/1
  # PATCH/PUT /screening_locations/1.json
  def update
    respond_to do |format|
      if @screening_location.update(screening_location_params)
        format.html { redirect_to @screening_location, notice: 'Screening location was successfully updated.' }
        format.json { render :show, status: :ok, location: @screening_location }
      else
        format.html { render :edit }
        format.json { render json: @screening_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screening_locations/1
  # DELETE /screening_locations/1.json
  def destroy
    @screening_location.destroy
    respond_to do |format|
      format.html { redirect_to screening_locations_url, notice: 'Screening location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screening_location
      @screening_location = ScreeningLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screening_location_params
      params.require(:screening_location).permit(:disease, :street, :name, :phone, :zipcode, :longitude, :latitude, :state)
    end
end
