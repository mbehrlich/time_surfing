class Api::SitesController < ApplicationController

  before_action :ensure_correct_user, only: [:update]

  def show
  end

  def update
  end

  def location
  end

  def site_params
    params.require(:site).permit(:address, :lat, :lng, :start_date, :end_date, :max_guests, :preferred_gender, :kid_friendly, :pet_friendly, :description, :accepting_guests)
  end

end
