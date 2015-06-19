class DropPublisherFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :publisher, :string
  end
end
