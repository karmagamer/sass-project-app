require 'test_helper'

<<<<<<< HEAD
class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
=======
class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    assert_response :success
  end

end
