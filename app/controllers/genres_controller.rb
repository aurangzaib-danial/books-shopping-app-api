class GenresController < ApplicationController
  def index
    @genres = Genre.all
    render json: @genres
  end

  def show
    @genre = Genre.find(params[:id])
    render json: @genre.as_json(include: { books: {} })
  end
end
