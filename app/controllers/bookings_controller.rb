class BookingsController < ApplicationController
  # before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_booking, only: %i[show]
  before_action :set_chair, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @chair = Chair.find(params[:chair_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chair = @chair

    if @booking.save
      redirect_to bookings_path, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  # def edit
  # end

  # def update
  #   if @booking.update(booking_params)
  #     redirect_to @booking, notice: 'Booking was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @booking.destroy
  #   redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  # end

  private

  def set_chair
    @chair = Chair.find(params[:chair_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:chair_id, :start_date, :end_date, :status)
  end
end
