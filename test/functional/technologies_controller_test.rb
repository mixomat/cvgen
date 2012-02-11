require 'test_helper'

class TechnologiesControllerTest < ActionController::TestCase
  setup do
    @technology = technologies(:ruby)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technologies)
  end

  test "should get names as json" do
    get :names, :format => :json
    assert_response :success
    assert_not_nil assigns(:technologies)
  end

  test "should post create" do
    post :create, :technology => @technology.attributes
    assert_redirected_to technologies_url
  end
end
