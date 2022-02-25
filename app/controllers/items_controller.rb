class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.first(4)
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

  def edit
    @item = Item.find(params[:id])
    @user = current_user
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(params_item)
      redirect_to my_items_user_items_path(current_user, @item)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to my_items_user_items_path(current_user, @item)
  end

  def my_items
      @items = Item.where(user: current_user)
  end

  private

  def params_item
    params.require(:item).permit(:name, :description, :price, :photo)
  end
end
