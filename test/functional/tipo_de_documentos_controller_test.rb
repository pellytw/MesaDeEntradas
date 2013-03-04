require 'test_helper'

class TipoDeDocumentosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_documento = tipo_de_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_documento" do
    assert_difference('TipoDeDocumento.count') do
      post :create, tipo_de_documento: { nombre: @tipo_de_documento.nombre }
    end

    assert_redirected_to tipo_de_documento_path(assigns(:tipo_de_documento))
  end

  test "should show tipo_de_documento" do
    get :show, id: @tipo_de_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_documento
    assert_response :success
  end

  test "should update tipo_de_documento" do
    put :update, id: @tipo_de_documento, tipo_de_documento: { nombre: @tipo_de_documento.nombre }
    assert_redirected_to tipo_de_documento_path(assigns(:tipo_de_documento))
  end

  test "should destroy tipo_de_documento" do
    assert_difference('TipoDeDocumento.count', -1) do
      delete :destroy, id: @tipo_de_documento
    end

    assert_redirected_to tipo_de_documentos_path
  end
end
