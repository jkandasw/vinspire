class PagesController < ApplicationController
  def home
    # returns Geocoder::Result object
    @result = request.safe_location
    render("pages/home.html.erb")
  end
end
