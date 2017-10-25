class ItemsController < ApplicationController
  def create
    @item = Item.new(params.require(:item).permit(:name))
    @item.user = current_user
  end
end
