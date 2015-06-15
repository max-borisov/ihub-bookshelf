class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.float :price
      t.date :pub_date
      t.string :publisher
      t.string :amazon_id
      t.text :keywords
      t.string :isbn

      t.timestamps null: false
    end
  end
end
