require 'test_helper'

class Learning::N5ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get learning_n5_index_url
    assert_response :success
  end

  test "should get show" do
    get learning_n5_show_url
    assert_response :success
  end

end
