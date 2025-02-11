class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :shopping_cart, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
