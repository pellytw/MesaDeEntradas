require 'test_helper'

class TipoDeDocumentoAgentesControllerTest < ActionController::TestCase
  setup do
    @tipo_de_documento_agente = tipo_de_documento_agentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_documento_agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_documento_agente" do
    assert_difference('TipoDeDocumentoAgente.count') do
      post :create, tipo_de_documento_agente: { nombre: @tipo_de_documento_agente.nombre }
    end

    assert_redirected_to tipo_de_documento_agente_path(assigns(:tipo_de_documento_agente))
  end

  test "should show tipo_de_documento_agente" do
    get :show, id: @tipo_de_documento_agente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_documento_agente
    assert_response :success
  end

  test "should update tipo_de_documento_agente" do
    put :update, id: @tipo_de_documento_agente, tipo_de_documento_agente: { nombre: @tipo_de_documento_agente.nombre }
    assert_redirected_to tipo_de_documento_agente_path(assigns(:tipo_de_documento_agente))
  end

  test "should destroy tipo_de_documento_agente" do
    assert_difference('TipoDeDocumentoAgente.count', -1) do
      delete :destroy, id: @tipo_de_documento_agente
    end

    assert_redirected_to tipo_de_documento_agentes_path
  end
end
