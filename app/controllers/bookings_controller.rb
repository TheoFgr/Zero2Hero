class BookingsController < ApplicationController
  def index
    @booking = Booking.new
  end
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(params[:booking])
    if @booking.save
      redirect_to user_item_bookings_path
    else
      render :new
    end
  end

  private

  params.require(:booking).permit(:user_id, :item_id)
end
