require 'test_helper'

class PublicacionsControllerTest < ActionController::TestCase
  setup do
    @publicacion = publicacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publicacion" do
    assert_difference('Publicacion.count') do
      post :create, publicacion: { codigo_categoria: @publicacion.codigo_categoria, codigo_usuario: @publicacion.codigo_usuario, descripcion_publicacion: @publicacion.descripcion_publicacion, fecha_publicacion: @publicacion.fecha_publicacion, titulo_publicacion: @publicacion.titulo_publicacion }
    end

    assert_redirected_to publicacion_path(assigns(:publicacion))
  end

  test "should show publicacion" do
    get :show, id: @publicacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publicacion
    assert_response :success
  end

  test "should update publicacion" do
    patch :update, id: @publicacion, publicacion: { codigo_categoria: @publicacion.codigo_categoria, codigo_usuario: @publicacion.codigo_usuario, descripcion_publicacion: @publicacion.descripcion_publicacion, fecha_publicacion: @publicacion.fecha_publicacion, titulo_publicacion: @publicacion.titulo_publicacion }
    assert_redirected_to publicacion_path(assigns(:publicacion))
  end

  test "should destroy publicacion" do
    assert_difference('Publicacion.count', -1) do
      delete :destroy, id: @publicacion
    end

    assert_redirected_to publicacions_path
  end
end
