require 'open-uri'

class PagesController < ApplicationController


  def home
q = Quote.all.sample
@quote=q.body

    if params[:user_street_address].present?
      # raise params.inspect
      @street_address = params[:user_street_address]
      @street_address_without_spaces = URI.encode(@street_address)

      # ==========================================================================
      # Your code goes below.
      # The street address the user input is in the variable @street_address.
      # A URL-safe version of the street address, with spaces and other illegal
      #   characters removed, is in the variable @street_address_without_spaces.
      # ==========================================================================

      url="http://maps.googleapis.com/maps/api/geocode/json?address="+@street_address_without_spaces
      parsed_data = JSON.parse(open(url).read)
      latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
      longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
      @latitude = latitude
      @longitude = longitude

      url="https://api.darksky.net/forecast/9d5eb4782ee71dbc0d39bee95b19ccff/#{@latitude},#{@longitude}"
      parsed_data = JSON.parse(open(url).read)
# raise parsed_data.inspect
      @current_temperature =  parsed_data["currently"]["temperature"]

      @current_summary = parsed_data["currently"]["summary"]
      @summary_of_next_sixty_minutes = parsed_data["minutely"]["summary"]

      @summary_of_next_several_hours = parsed_data["hourly"]["summary"]

      @summary_of_next_several_days = parsed_data["daily"]["summary"]

    end

      render("pages/home_form.html.erb")
    end
  end
