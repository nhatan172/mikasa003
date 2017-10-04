require 'test_helper'

class Learning::LearningControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get learning_learning_home_url
    assert_response :success
  end

end
