class HomeController < ApplicationController
  # before_action :set_diseases, :only => [:index]
  before_action :set_disease, :only => [:index]
  def index
    if params[:search]
      @disease = Disease.search(params[:search]).order("created_at DESC").first if params[:search]
      @hassearch = 'true'
    end
  end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(1)
    end
    
    def set_diseases
      @diseases = Disease.all
    end
end
