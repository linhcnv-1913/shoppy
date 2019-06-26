class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :information
      t.integer :quantity

      t.timestamps
    end
  end
end
