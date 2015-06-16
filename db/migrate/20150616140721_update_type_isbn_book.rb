class UpdateTypeIsbnBook < ActiveRecord::Migration
  def change
    change_column :books, :isbn, :string, null: false, default: ''
  end
end
