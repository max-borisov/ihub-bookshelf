class RemoveFullnameUser < ActiveRecord::Migration
  def change
    remove_column :users, :fullname, :string, null: false, default: ''
  end
end
