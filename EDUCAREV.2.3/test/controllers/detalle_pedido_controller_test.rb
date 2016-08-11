require 'test_helper'

class DetallePedidoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detalle_pedido_index_url
    assert_response :success
  end

end
