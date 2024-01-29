class OrdersController < ApplicationController
  before_action :set_user

  def create
    @order = Order.new(user: @user, book_ids: params["books_ids"])
    @order.save

    render json: { status: "order placed"}
  end

  def index
    @orders = @user.orders.includes(:books)
    render json: @orders.as_json(include: { books: {} })
  end

  private

  def set_user
    auth = decode_token
    @user = User.find_by!(email: auth["user_email"])
  end
end
