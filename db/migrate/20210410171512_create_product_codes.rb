class CreateProductCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_codes do |t|
      t.string :di, null: false
      t.string :code, null: false
      t.string :code_name, null: false
      t.timestamps
    end
  end
end
