class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action  :set_session_location_ative
  


   	private

	def store_current_location
	  store_location_for(:member, request.url)
	end


	def set_locale
		I18n.locale = session[:current_locale_session] || I18n.default_locale
	end

	def set_session_location_ative
		if !params[:locale].blank?
		  #puts "AAAAAAAA #{params[:locale]}  AAAAAA"
		  session[:current_locale_session] = params[:locale]
		  set_locale
		end
	end
end
