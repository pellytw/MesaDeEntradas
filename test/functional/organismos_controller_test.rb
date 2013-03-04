require 'test_helper'

class OrganismosControllerTest < ActionController::TestCase
  setup do
    @organismo = organismos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organismos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organismo" do
    assert_difference('Organismo.count') do
      post :create, organismo: { nombre: @organismo.nombre }
    end

    assert_redirected_to organismo_path(assigns(:organismo))
  end

  test "should show organismo" do
    get :show, id: @organismo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organismo
    assert_response :success
  end

  test "should update organismo" do
    put :update, id: @organismo, organismo: { nombre: @organismo.nombre }
    assert_redirected_to organismo_path(assigns(:organismo))
  end

  test "should destroy organismo" do
    assert_difference('Organismo.count', -1) do
      delete :destroy, id: @organismo
    end

    assert_redirected_to organismos_path
  end
end
