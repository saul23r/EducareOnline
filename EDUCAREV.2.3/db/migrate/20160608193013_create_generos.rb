class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :genero_name

      t.timestamps null: false
    end
  end
end
