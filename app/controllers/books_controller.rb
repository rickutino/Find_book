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
    @book = Book.create(book_params)
    if @book.save
      redirect_to new_search_path
    else 
      render :new
    end
  end 

  def edit
    # @book = Book.find(params[:id])
    @categories = Category.all
  end

  def update
    # @book = Book.find(params[:id])
     if @book.update(book_params)
      redirect_to book_path(@book), notice: "ブックの編集成功しました。"
    else 
      render　:edit
    end
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
    unless @book
      redirect_to new_search_path, notice: "探しているブックがありません。"
    end
  end
end
