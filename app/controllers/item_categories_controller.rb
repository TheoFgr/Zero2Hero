class ItemCategoriesController < ApplicationController
  def show
    @item_category = ItemCategory.find(params[:id])
    @category = Category.find(params[:category_id])
  end
end
