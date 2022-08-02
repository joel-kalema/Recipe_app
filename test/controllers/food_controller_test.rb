require "test_helper"

class FoodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_index_url
    assert_response :success
  end
end
