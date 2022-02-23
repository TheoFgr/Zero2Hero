class ItemsController < ApplicationController
  def index
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end
end
