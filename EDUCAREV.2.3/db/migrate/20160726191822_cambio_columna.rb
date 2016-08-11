class CambioColumna < ActiveRecord::Migration
  def self.up
    rename_column :entradas, :producto_id, :product_id
  end

  def self.down

  end


end
