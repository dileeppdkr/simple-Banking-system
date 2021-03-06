class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
     # redirect_back_or user
      if current_user.try(:admin?)
        redirect_to root_url
      else
        redirect_to user_path(current_user)
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
end
