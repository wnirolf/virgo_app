class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :unit
	  t.decimal :quantity, :precision => 8, :scale => 3
      t.decimal :price, :precision => 8, :scale => 2
      t.string :inventory
      t.integer :user_id

      t.timestamps
    end
	add_index :products, [:user_id, :inventory, :updated_at]
  end
end