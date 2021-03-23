class AddComponentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :component do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :brand_name
      t.text :description
      t.integer :supplier, null: false
      t.integer :articulation, null: false
      t.string :supplier_catalogue_number
      t.string :rating
      t.decimal :list_price
      t.decimal :ramsay_price
      t.timestamps null: false
    end
  end
end
