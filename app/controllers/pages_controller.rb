class PagesController < ApplicationController
  def home
  end

  def about
  end

  def portfolio
  end

  def travelogues
    @cities = City.geocoded

    @markers = @cities.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude,
        infoWindow: render_to_string(partial: "cities/info_window", locals: { city: city }),
        image_url: helpers.asset_url('components/locationflag.png')
      }
    end
  end

  def shop
  end
end
