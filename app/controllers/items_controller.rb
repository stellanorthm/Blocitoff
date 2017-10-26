class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save
       flash[:notice] = "Item was created successfully."
     else
       flash.now[:alert] = "There was an error creating the item."
     end

     respond_to do |format|
        format.js {render inline: "location.reload();" }
      end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
       flash[:notice] = "Item was deleted successfully."
     else
       flash.now[:alert] = "There was an error deleting the item."
     end

     respond_to do |format|
        format.js {render inline: "location.reload();" }
      end
  end

  private

    def item_params
        params.require(:item).permit(:name)
    end

end
