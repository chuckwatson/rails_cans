class CansController < ApplicationController
  def new
    @can = Can.new
  end

  def create
    @can = Can.new(can_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @cans = Can.all
  end

  def show
  end


  def can_params
    params.require(:can).permit(:name, :abv)
  end
end
