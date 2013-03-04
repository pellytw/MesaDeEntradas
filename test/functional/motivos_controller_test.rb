require 'test_helper'

class MotivosControllerTest < ActionController::TestCase
  setup do
    @motivo = motivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivo" do
    assert_difference('Motivo.count') do
      post :create, motivo: { nombre: @motivo.nombre }
    end

    assert_redirected_to motivo_path(assigns(:motivo))
  end

  test "should show motivo" do
    get :show, id: @motivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motivo
    assert_response :success
  end

  test "should update motivo" do
    put :update, id: @motivo, motivo: { nombre: @motivo.nombre }
    assert_redirected_to motivo_path(assigns(:motivo))
  end

  test "should destroy motivo" do
    assert_difference('Motivo.count', -1) do
      delete :destroy, id: @motivo
    end

    assert_redirected_to motivos_path
  end
end
