class DetallePedidoController < ApplicationController
  def index
    if params[:search]
       @detalle_pedido = LineItem.search(params[:search])
    end
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_line_item
    @line_item = LineItem.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:product_id, :pedido_id)
    end
end
