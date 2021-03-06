class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    item = Item.new(item_params)
    list = list_find
    item.list_id = list.id
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = item_find
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:body)
  end
end
