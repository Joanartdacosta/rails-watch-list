class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @lists = List.new(list_params)
    if @lists.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
