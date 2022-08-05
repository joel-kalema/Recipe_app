require 'test_helper' # rubocop:todo Layout/EndOfLine

class RecipeFoodControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get recipe_food_index_url
    assert_response :success
  end
end
