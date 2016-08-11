class CreateEditorials < ActiveRecord::Migration
  def change
    create_table :editorials do |t|
      t.string :editorial_name

      t.timestamps null: false
    end
  end
end
