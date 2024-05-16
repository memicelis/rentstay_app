class MainController < ApplicationController
  def index; end

  def houses
    @houses = House.all
  end

  def add_house
    @house = House.new
  end

  def create_house
    @house = House.new(house_params)
    if @house.save
      redirect_to root_path, notice: 'House was successfully added.'
    else
      render :add_house
    end
  end

  def delete_house
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path, notice: 'House successfully deleted.'
  end

  private

  def house_params
    params.require(:house).permit(:title, :description, :price, :availability, images: [])
  end
end
