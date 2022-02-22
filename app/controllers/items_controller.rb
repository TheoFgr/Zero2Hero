class ItemsController < ApplicationController
  class BookingsController < ApplicationController
    def index
      @item = Item.new
    end

    def show
      @item = Item.find(params[:id])
    end
  end
end
