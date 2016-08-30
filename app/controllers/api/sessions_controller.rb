class Api::SessionsController < ApplicationController

  before_action :ensure_logged_in, only: [:destroy]
  before_action :ensure_not_logged_in, only: [:create]

  def create
    @user = User.find_by_credentials(session_params[:username], session_params[:password])
    if @user.class == String
      render json: @user
    else
      login(@user)
      render :show
    end
  end

  def destroy
    logout
    render json: {}
  end

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
