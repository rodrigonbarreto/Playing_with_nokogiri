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

   	@lista = Restaurant.all
	
  end
end
