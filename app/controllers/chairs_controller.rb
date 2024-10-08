class ChairsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_chair, only: [:show]

  def index
    @chairs = Chair.all
  end

  def show
    @chair = Chair.first[params: id]
  end

  def new
    @chair = Chair.new
  end

  def create
    @chair = Chair.new(chair_params)
    if @chair.save
      redirect_to chair_path(@chair)
    else
      render :new, status: :processable_entity
    end
  end

  private

  def set_chair
    @chair = Chair.find(params[:id])
  end

  def chair_params
    params.require(:chair).permit(:name, :price)
  end
end
