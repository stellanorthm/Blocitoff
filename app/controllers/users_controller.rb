class UsersController < ApplicationController
  def show
    @item = Item.new
    @items = Item.where(@user == current_user)
  end
end
