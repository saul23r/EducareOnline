require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get dida" do
    get :dida
    assert_response :success
  end

  test "should get libro" do
    get :libro
    assert_response :success
  end

  test "should get pro" do
    get :pro
    assert_response :success
  end

  test "should get venta" do
    get :venta
    assert_response :success
  end

end
