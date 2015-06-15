class UpdateIsbnBook < ActiveRecord::Migration
  def change
    remove_column :books, :isbn, :integer
    add_column :books, :isbn, :integer
    add_index :books, :isbn
  end
end
