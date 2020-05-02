class CansController < ApplicationController
  def new
    @can = Can.new
  end

  def create
    @can = Can.new(can_params)
     if @can.save
      redirect_to cans_path
     else
    render :new
    end
  end

  def index
    @cans = Can.all
  end

  def show
  end


  def can_params
    params.require(:can).permit(:name, :abv, :photo, :brewery_id, :hop_id)
  end
end
