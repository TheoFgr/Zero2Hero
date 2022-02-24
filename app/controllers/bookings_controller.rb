class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @user = current_user.id
  end

  def show
    @booking = Booking.find(params[current_user.id])
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
      redirect_to user_item_bookings_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @item = Item.find(params[:item_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(params_booking)
      redirect_to user_item_bookings_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_item_bookings_path
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
