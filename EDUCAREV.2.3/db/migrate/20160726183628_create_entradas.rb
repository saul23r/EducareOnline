class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.integer :producto_id
      t.string :descripcion
      t.integer :existencia
      t.float :precio_compra
      t.float :precio_venta
      t.integer :proveedor_id

      t.timestamps null: false
    end
  end
end
