class CreateOrderBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :order_books do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
