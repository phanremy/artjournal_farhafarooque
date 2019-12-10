class CitiesController < ApplicationController
  def show
    @city = City.find_by(name: params[:name])
  end
end
