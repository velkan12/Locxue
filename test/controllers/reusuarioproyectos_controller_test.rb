require 'test_helper'

class ReusuarioproyectosControllerTest < ActionController::TestCase
  setup do
    @reusuarioproyecto = reusuarioproyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reusuarioproyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reusuarioproyecto" do
    assert_difference('Reusuarioproyecto.count') do
      post :create, reusuarioproyecto: { codigo_proyecto: @reusuarioproyecto.codigo_proyecto, codigo_usuario: @reusuarioproyecto.codigo_usuario }
    end

    assert_redirected_to reusuarioproyecto_path(assigns(:reusuarioproyecto))
  end

  test "should show reusuarioproyecto" do
    get :show, id: @reusuarioproyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reusuarioproyecto
    assert_response :success
  end

  test "should update reusuarioproyecto" do
    patch :update, id: @reusuarioproyecto, reusuarioproyecto: { codigo_proyecto: @reusuarioproyecto.codigo_proyecto, codigo_usuario: @reusuarioproyecto.codigo_usuario }
    assert_redirected_to reusuarioproyecto_path(assigns(:reusuarioproyecto))
  end

  test "should destroy reusuarioproyecto" do
    assert_difference('Reusuarioproyecto.count', -1) do
      delete :destroy, id: @reusuarioproyecto
    end

    assert_redirected_to reusuarioproyectos_path
  end
end
