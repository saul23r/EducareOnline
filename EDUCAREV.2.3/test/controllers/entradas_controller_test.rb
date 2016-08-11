require 'test_helper'

class EntradasControllerTest < ActionController::TestCase
  setup do
    @entrada = entradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entradas)
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should create entrada" do
    assert_difference('Entrada.count') do
      post :create, entrada: { descripcion: @entrada.descripcion, existencia: @entrada.existencia, precio_compra: @entrada.precio_compra, precio_venta: @entrada.precio_venta, producto_id: @entrada.producto_id, proveedor_id: @entrada.proveedor_id }
    end

    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should show entrada" do
    get :show, id: @entrada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada
    assert_response :success
  end

  test "should update entrada" do
    patch :update, id: @entrada, entrada: { descripcion: @entrada.descripcion, existencia: @entrada.existencia, precio_compra: @entrada.precio_compra, precio_venta: @entrada.precio_venta, producto_id: @entrada.producto_id, proveedor_id: @entrada.proveedor_id }
    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should destroy entrada" do
    assert_difference('Entrada.count', -1) do
      delete :destroy, id: @entrada
    end

    assert_redirected_to entradas_path
  end
end
