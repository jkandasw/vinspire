class UsersController < ApplicationController
  # skip_before_action :authenticate_user!, :only => [:index, :show]

  def show
    
    @type=Quote.where(params[:quote_type])
    @mood=Mood.where(params[:mood_choice])
    @mood_id=@mood.id
q= Quote.where(:quote_type => @type).where(:mood_choice =>@mood_id)
@quote = q.body
render("pages/home_form.html.erb")
  end


end
