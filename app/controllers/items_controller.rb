class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @user = current_user
    @item = Item.new(params_item)
    @item.user = @user
    if @item.save
      redirect_to new_user_item_booking_path(@user, @item)
    else
      render :new
    end
  end

  private

  def params_item
    params.require(:item).permit(:name, :description, :price, :photo)
  end
end
