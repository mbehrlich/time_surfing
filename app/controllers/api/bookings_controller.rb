class Api::BookingsController < ApplicationController

  before_action :ensure_logged_in

  def index
    @bookings = Booking.where(guest_id: current_user.id).includes(:host)
    @guests = Booking.where(site_id: current_user.site.id).includes(:guest)
  end

  # def guests
  #   @bookings = Booking.where(site_id: current_user.site.id).includes(:guest)
  #   render :guests
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.guest_id = current_user.id
    # @booking.site_id = params[:id]
    # p params
    # p @booking.site
    if @booking.save
      render :show
    else
      render json: @booking.errors.full_messages, status: 422
    end
  end

  def destroy
    @booking = Booking.find_by(id: params[:id])
    @booking.destroy
    render json: {}
  end

  def booking_params
    params.require(:booking).permit(:site_id, :start_date, :end_date, :guests)
  end

end
