class BooksController < ApplicationController
  def index
    if params[:ids]
      books_ids = params[:ids].split(',')
      @books = Book.where(id: books_ids)
    else
      @books = Book.all
    end

    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end
end
