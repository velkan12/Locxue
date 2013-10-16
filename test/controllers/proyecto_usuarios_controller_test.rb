require 'test_helper'

class ProyectoUsuariosControllerTest < ActionController::TestCase
  setup do
    @proyecto_usuario = proyecto_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyecto_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyecto_usuario" do
    assert_difference('ProyectoUsuario.count') do
      post :create, proyecto_usuario: { proyecto_id: @proyecto_usuario.proyecto_id, usuario_id: @proyecto_usuario.usuario_id }
    end

    assert_redirected_to proyecto_usuario_path(assigns(:proyecto_usuario))
  end

  test "should show proyecto_usuario" do
    get :show, id: @proyecto_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyecto_usuario
    assert_response :success
  end

  test "should update proyecto_usuario" do
    patch :update, id: @proyecto_usuario, proyecto_usuario: { proyecto_id: @proyecto_usuario.proyecto_id, usuario_id: @proyecto_usuario.usuario_id }
    assert_redirected_to proyecto_usuario_path(assigns(:proyecto_usuario))
  end

  test "should destroy proyecto_usuario" do
    assert_difference('ProyectoUsuario.count', -1) do
      delete :destroy, id: @proyecto_usuario
    end

    assert_redirected_to proyecto_usuarios_path
  end
end
