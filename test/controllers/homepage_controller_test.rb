require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "should get inicioactas" do
    get :inicioactas
    assert_response :success
  end

  test "should get proyectos" do
    get :proyectos
    assert_response :success
  end

  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

end
