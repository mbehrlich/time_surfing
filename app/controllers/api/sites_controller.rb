class Api::SitesController < ApplicationController

  before_action :ensure_correct_user, only: [:update]

  def update
    @site = Site.find_by(id: params[:id])
    if @site.update(site_params)
      @user = @site.user
      render :show
    else
      @errors = @site.errors.full_messages
      render json: @errors, status: 422
    end
  end

  def location
  end

  def site_params
    params.require(:site).permit(:address, :lat, :lng, :start_date, :end_date, :max_guests, :preferred_gender, :kid_friendly, :pet_friendly, :description, :accepting_guests)
  end

end
