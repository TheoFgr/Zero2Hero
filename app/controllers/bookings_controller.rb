class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[:item_id])
    @user = current_user
    @booking = Booking.new(params_booking)
    @booking.user = @user
    @booking.item = @item
    if @booking.save
      redirect_to user_item_booking_path
    else
      render :new
    end
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
