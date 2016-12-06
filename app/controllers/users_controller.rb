class UsersController < ApplicationController
  # skip_before_action :authenticate_user!, :only => [:index, :show]

  def show

    # user_quote=Quote.where(:quote_type => params[:quote_type])
    # mood=Mood.where(params[:mood_choice])
    # mood_id=mood.id
@q= Quote.where(:quote_type => params[:quote_type],:mood_id =>params[:mood_id]).first
render("pages/home_form.html.erb")
  end
end
