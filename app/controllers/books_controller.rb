class BooksController < ApplicationController
  before_action :current_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
    @categories = Category.all
  end

  def create
    Book.create(book_params)

    redirect_to new_search_path
  end 

  def edit
    # @book = Book.find(params[:id])
    @categories = Category.all
  end

  def update
    # @book = Book.find(params[:id])
    @book.update(book_params)

    redirect_to book_path(@book)
  end

  def destroy
    # @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :category_id)
  end

  def current_book
    @book = Book.find(params[:id])
  end
end
