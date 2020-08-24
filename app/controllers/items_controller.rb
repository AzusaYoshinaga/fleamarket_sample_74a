class ItemsController < ApplicationController
  def index
  end
  
  def new
    @item = Item.new
    @category_parent_array = Category.where(ancestry: nil)
  end

  def show
  end
end
