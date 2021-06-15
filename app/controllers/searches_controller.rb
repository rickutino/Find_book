class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
  end 

  def new 
    @search = Search.new
    @categories = Category.all
    @category_id = Book.distinct.pluck(:category_id)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end 

  private

  def search_params
    params.require(:search).permit(:title, :description, :category_id)
  end 
end
