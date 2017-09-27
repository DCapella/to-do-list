class Api::ListsController < ApiController
  before_action :authenticated?

  def index
    lists = List.all
    render json: lists, each_serializer: ListSerializer
  end

  def create
    list = List.new(list_params)
    user = user_find
    list.user_id = user.id
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      list = list_find
      list.destroy
      render json: {}, status: :no_content
    rescue
      render :json => {}, :status => :not_found
    end
  end

  def update
    list = list_find
    if list.update(list_params)
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :private)
  end
end
