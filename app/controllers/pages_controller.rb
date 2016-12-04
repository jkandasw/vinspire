class PagesController < ApplicationController


  def home
    # returns Geocoder::Result object
    @result = request.safe_location

    url="https://api.darksky.net/forecast/533978488e0e35129d90368d2df3490b/"+@lat+","+@lng
    parsed_data = JSON.parse(open(url).read)

        @current_temperature =  parsed_data["currently"]["temperature"]

        @current_summary = parsed_data["currently"]["summary"]
        @summary_of_next_sixty_minutes = parsed_data["minutely"]["summary"]

        @summary_of_next_several_hours = parsed_data["hourly"]["summary"]

        @summary_of_next_several_days = parsed_data["daily"]["summary"]

        render("forecast/coords_to_weather.html.erb")
    render("pages/home.html.erb")

  end
end
