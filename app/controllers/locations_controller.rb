class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.all
    render :layout => "footer"
  end

end
