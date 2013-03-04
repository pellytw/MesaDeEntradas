require 'test_helper'

class PasesControllerTest < ActionController::TestCase
  setup do
    @pase = pases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pase" do
    assert_difference('Pase.count') do
      post :create, pase: { fecha: @pase.fecha, recibido: @pase.recibido, user_id: @pase.user_id }
    end

    assert_redirected_to pase_path(assigns(:pase))
  end

  test "should show pase" do
    get :show, id: @pase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pase
    assert_response :success
  end

  test "should update pase" do
    put :update, id: @pase, pase: { fecha: @pase.fecha, recibido: @pase.recibido, user_id: @pase.user_id }
    assert_redirected_to pase_path(assigns(:pase))
  end

  test "should destroy pase" do
    assert_difference('Pase.count', -1) do
      delete :destroy, id: @pase
    end

    assert_redirected_to pases_path
  end
end
