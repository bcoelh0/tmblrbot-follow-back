class HomeController < ApplicationController

  def landing
  	redirect_to main_path unless !current_user?
  end

  def main
  	session[:user_id] = 1 if Rails.env.test?		#sets session for test
  	redirect_to root_path unless current_user?
  	@feed = Feed.last(25).reverse
  end

end
