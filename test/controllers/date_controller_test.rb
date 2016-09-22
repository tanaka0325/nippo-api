require 'test_helper'

class DateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get date_index_url
    assert_response :success
  end

  test "should get show" do
    get date_show_url
    assert_response :success
  end

end
