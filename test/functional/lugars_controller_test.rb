require 'test_helper'

class LugarsControllerTest < ActionController::TestCase
  setup do
    @lugar = lugars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lugars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lugar" do
    assert_difference('Lugar.count') do
      post :create, lugar: { documento_id: @lugar.documento_id, efectivo: @lugar.efectivo, fecha_desde: @lugar.fecha_desde, fecha_hasta: @lugar.fecha_hasta, oficina_id: @lugar.oficina_id, pase_id: @lugar.pase_id, persona_id: @lugar.persona_id, user_id: @lugar.user_id }
    end

    assert_redirected_to lugar_path(assigns(:lugar))
  end

  test "should show lugar" do
    get :show, id: @lugar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lugar
    assert_response :success
  end

  test "should update lugar" do
    put :update, id: @lugar, lugar: { documento_id: @lugar.documento_id, efectivo: @lugar.efectivo, fecha_desde: @lugar.fecha_desde, fecha_hasta: @lugar.fecha_hasta, oficina_id: @lugar.oficina_id, pase_id: @lugar.pase_id, persona_id: @lugar.persona_id, user_id: @lugar.user_id }
    assert_redirected_to lugar_path(assigns(:lugar))
  end

  test "should destroy lugar" do
    assert_difference('Lugar.count', -1) do
      delete :destroy, id: @lugar
    end

    assert_redirected_to lugars_path
  end
end
