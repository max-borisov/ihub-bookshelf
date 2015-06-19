class RenameTableShoppingCart < ActiveRecord::Migration
  def change
    rename_table :shopping_carts, :shopping_cart_items
  end
end
