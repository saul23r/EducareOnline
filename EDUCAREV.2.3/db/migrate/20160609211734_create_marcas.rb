class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :marca_name

      t.timestamps null: false
    end
  end
end
