class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type
      t.integer :cart_id

      t.timestamps null: false
    end
  end
end
