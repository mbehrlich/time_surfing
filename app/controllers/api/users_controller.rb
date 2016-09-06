class Api::UsersController < ApplicationController

  before_action :ensure_logged_in, only: [:update, :destroy]
  before_action :ensure_not_logged_in, only: [:create]
  before_action :ensure_correct_user, only: [:update, :destroy]

  def show
    @user = User.find_by(id: params[:id])
    if @user
      @site = @user.site
    else
      render json: ["User has been erased from history"], status: 404
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      @site = Site.create({user_id: @user.id});
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



end
