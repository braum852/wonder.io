class WondersController < ApplicationController

  def index
    if params[:location_id]
      @wonders = Location.find(params[:location_id]).wonders
    else
      @wonders = Wonder.all
    end
    render :layout => "footer"
  end

  def show
    if params[:location_id]
      @wonder = Location.find(params[:location_id]).wonders.find(params[:id])
    else
      @wonder = Wonder.find(params[:id])
    end
  end
end
