class ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def create
    entry = current_user.entries.find_or_create_by(created_at: Date.today)
    respond_with entry.items.create(item_params)
  end

  def update
    respond_with Item.update(params[:id], item_params)
  end

  def destroy
    respond_with Item.destroy(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:description, :entry_id)
  end
end

