class ListsController < ApplicationController

  def show
  end

  def index
    @list = List.all
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
