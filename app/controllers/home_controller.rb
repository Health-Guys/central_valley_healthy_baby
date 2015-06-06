class HomeController < ApplicationController
  before_action :set_diseases, :only => [:index]
  def index
  end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params[:id])
    end
    
    def set_diseases
      @diseases = Disease.all
    end
end
