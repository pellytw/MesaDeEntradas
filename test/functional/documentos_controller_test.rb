require 'test_helper'

class DocumentosControllerTest < ActionController::TestCase
  setup do
    @documento = documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento" do
    assert_difference('Documento.count') do
      post :create, documento: { descripcion: @documento.descripcion, fecha: @documento.fecha, fecha_de_vencimiento: @documento.fecha_de_vencimiento, motivo_id: @documento.motivo_id, nombre: @documento.nombre, numero: @documento.numero, numero_de_entrada: @documento.numero_de_entrada, numero_de_oblea: @documento.numero_de_oblea, numero_de_salida: @documento.numero_de_salida, tipo_de_documento_id: @documento.tipo_de_documento_id, tramite_preferencial: @documento.tramite_preferencial }
    end

    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should show documento" do
    get :show, id: @documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento
    assert_response :success
  end

  test "should update documento" do
    put :update, id: @documento, documento: { descripcion: @documento.descripcion, fecha: @documento.fecha, fecha_de_vencimiento: @documento.fecha_de_vencimiento, motivo_id: @documento.motivo_id, nombre: @documento.nombre, numero: @documento.numero, numero_de_entrada: @documento.numero_de_entrada, numero_de_oblea: @documento.numero_de_oblea, numero_de_salida: @documento.numero_de_salida, tipo_de_documento_id: @documento.tipo_de_documento_id, tramite_preferencial: @documento.tramite_preferencial }
    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should destroy documento" do
    assert_difference('Documento.count', -1) do
      delete :destroy, id: @documento
    end

    assert_redirected_to documentos_path
  end
end
