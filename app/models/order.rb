class Order < ApplicationRecord
  has_many :order_books, dependent: :destroy
  has_many :books, through: :order_books
  belongs_to :user
  
  after_create do
    update(total: books.sum(:price))
  end
end
