class AddSupplierProfile < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_profile do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false
      t.string :name, null: false
      t.string :nickname
      t.text :description
      t.timestamps null: false
    end
  end
end
