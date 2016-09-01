class Api::UsersController < ApplicationController

  before_action :ensure_logged_in, only: [:show, :update, :destroy]
  before_action :ensure_not_logged_in, only: [:create]
  before_action :ensure_correct_user, only: [:update, :destroy]

  def show
    @user = User.find_by(id: params[:id])
    unless @user
      render json: ["User has been erased from history"], status: 404
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render :show
    else
      @errors = @user.errors.full_messages
      render json: @errors, status: 422
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      render :show
    else
      @errors = @user.errors.full_messages
      render json: @errors, status: 422
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {}
  end

  def user_params
    params.require(:user).permit(:username, :password, :firstname, :lastname, :profile, :birthdate, :gender, :description)
  end

  def ensure_correct_user
    unless current_user.id == params[:id]
      render json: ["Forbidden"], status: 404
    end
  end

end
