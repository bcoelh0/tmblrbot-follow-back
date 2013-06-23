class HomeController < ApplicationController
  def landing
  end

  def check
  	render :action => 'main'
  end

  def main
  end

end
