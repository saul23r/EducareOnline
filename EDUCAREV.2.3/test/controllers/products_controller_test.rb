require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { author_libro: @product.author_libro, cantidad: @product.cantidad, descripcion: @product.descripcion, editorial_id: @product.editorial_id, genero_id: @product.genero_id, imagen: @product.imagen, marca_id: @product.marca_id, nombre: @product.nombre, precio: @product.precio, proveedor_id: @product.proveedor_id, tipo: @product.tipo }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { author_libro: @product.author_libro, cantidad: @product.cantidad, descripcion: @product.descripcion, editorial_id: @product.editorial_id, genero_id: @product.genero_id, imagen: @product.imagen, marca_id: @product.marca_id, nombre: @product.nombre, precio: @product.precio, proveedor_id: @product.proveedor_id, tipo: @product.tipo }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
