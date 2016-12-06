class UsersController < ApplicationController
  # skip_before_action :authenticate_user!, :only => [:index, :show]

  def show

    # Getting a quote based on quote type and mood_id
@q= Quote.where(:quote_type => params[:quote_type],:mood_id =>params[:mood_id]).first
render("pages/home_form.html.erb")
  end
end
