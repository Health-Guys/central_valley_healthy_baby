class PrevalancesController < ApplicationController
  before_action :set_prevalance, only: [:show, :edit, :update, :destroy]

  # GET /prevalances
  # GET /prevalances.json
  def index
    @prevalances = Prevalance.all
  end

  # GET /prevalances/1
  # GET /prevalances/1.json
  def show
  end

  # GET /prevalances/new
  def new
    @prevalance = Prevalance.new
  end

  # GET /prevalances/1/edit
  def edit
  end

  # POST /prevalances
  # POST /prevalances.json
  def create
    @prevalance = Prevalance.new(prevalance_params)

    respond_to do |format|
      if @prevalance.save
        format.html { redirect_to @prevalance, notice: 'Prevalance was successfully created.' }
        format.json { render :show, status: :created, location: @prevalance }
      else
        format.html { render :new }
        format.json { render json: @prevalance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prevalances/1
  # PATCH/PUT /prevalances/1.json
  def update
    respond_to do |format|
      if @prevalance.update(prevalance_params)
        format.html { redirect_to @prevalance, notice: 'Prevalance was successfully updated.' }
        format.json { render :show, status: :ok, location: @prevalance }
      else
        format.html { render :edit }
        format.json { render json: @prevalance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prevalances/1
  # DELETE /prevalances/1.json
  def destroy
    @prevalance.destroy
    respond_to do |format|
      format.html { redirect_to prevalances_url, notice: 'Prevalance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prevalance
      @prevalance = Prevalance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prevalance_params
      params.require(:prevalance).permit(:case_count, :disease, :screened, :california_region, :disorder_percent)
    end
end
