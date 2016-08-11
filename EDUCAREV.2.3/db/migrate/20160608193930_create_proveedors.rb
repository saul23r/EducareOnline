class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email

      t.timestamps null: false
    end
  end
end
