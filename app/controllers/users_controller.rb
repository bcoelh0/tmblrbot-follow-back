class UsersController < ApplicationController

  def check
  	if registered_user? auth_params
      set_session User.find_by_tumblr_name auth_params[:uid]
  		redirect_to main_path
  	else
  		create
  	end
  end

  def create
  	@user = User.new
  	@user.set_params auth_params
  	@user.save
  	@user.set_blogs auth_params
  	if @user.save
  		set_session @user
  		redirect_to main_path
  	else
  		render :text => 'Error saving user to db.'
  	end
  end

  def show
  	@user = User.find current_user
  end

  def logout
    reset_session
    redirect_to root_path
  end

  private
  	def set_session user
  		session[:user_id] = user.id
  	end

  	def auth_params
  		request.env["omniauth.auth"]
  	end

  	def registered_user? auth
  		true unless !User.find_by_tumblr_name auth[:uid]
  	end
end
