class Api::ItemsController < ApiController
  #Ctrl for items
  before_action :authenticated?
  before_action :set_list
  before_action :set_list_item, only: [:show, :update, :destroy]

  def create

    item = Item.find(params[:item_id])

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = set_list_item
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:item, :compeleted)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_list_item
    @item = @list.items.find_by!(id: params[:id]) if @list
  end

end
