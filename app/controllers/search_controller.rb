class SearchController < ApplicationController
  def index
    if params['q']
      @books = Book.search(params['q'])
    else
      @books = Book.all
    end
    
    render json: @books
  end
end
