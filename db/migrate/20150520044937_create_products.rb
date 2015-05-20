class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.money :price
      t.money :gst
      t.text :description
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
