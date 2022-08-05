class FoodsController < ApplicationController # rubocop:todo Layout/EndOfLine
  before_action :authenticate_user!

  def index
    if user_signed_in?
      @foods = Food.where(user_id: current_user.id)
    else
      redirect_to user_session_path
    end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    @food.user = current_user

    if @food.save
      redirect_to foods_url, notice: 'Food was successfully created.'
    else
      render :new, alert: 'Food could not be created'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_url, notice: 'Food was successfully destroyed.'
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :unit_price)
  end
end
