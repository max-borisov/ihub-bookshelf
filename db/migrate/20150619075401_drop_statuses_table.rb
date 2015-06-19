class DropStatusesTable < ActiveRecord::Migration
  def change
    drop_table :statuses
  end
end
