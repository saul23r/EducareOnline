class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :author_libro
      t.integer :editorial_id
      t.integer :genero_id
      t.integer :cantidad,  default: 1
      t.integer :proveedor_id
      t.string :descripcion
      t.float :precio, precision: 8, scale: 2
      t.integer :marca_id
      t.string :imagen
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
