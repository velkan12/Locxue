require 'test_helper'

class ProyectoControllerTest < ActionController::TestCase
  test "should get listado" do
    get :listado
    assert_response :success
  end

end
