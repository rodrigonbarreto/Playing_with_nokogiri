require 'nokogiri'
require 'open-uri'
class HomeController < ApplicationController
  def index
   	@total = Restaurant.all.count
   	#@random_restaurant = Restaurant.where(chosen: true).sample
	@random_restaurant = Restaurant.all.sample
  end
  def choosed
   	@total = Restaurant.all.count
   	@lista = Restaurant.where(chosen: true)
  end

  # GET /randomselect/1
  # GET /randomselect/1.json
  def randomselect
    @restaurant = Restaurant.find(params[:id])
  end

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
    else
    redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
  
end
