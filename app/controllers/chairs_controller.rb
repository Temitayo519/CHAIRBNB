class ChairsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_chair, only: [:show]

  def index
    @chairs = Chair.all
  end

  def show
  end

  def new
    @chair = Chair.new
  end

  def create
    # @chair = Chair.new(chair_params)
    @chair = current_user.chairs.new(chair_params)
    if @chair.save
      redirect_to bookings_path, notice: 'Chair was successfully created.'
    else
      Rails.logger.debug @chair.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_chair
    @chair = Chair.find(params[:id])
  end

  def chair_params
    params.require(:chair).permit(:name, :price, photos: [])
  end
end
