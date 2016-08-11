class AddPedidoIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :pedido_id, :integer
  end
end
