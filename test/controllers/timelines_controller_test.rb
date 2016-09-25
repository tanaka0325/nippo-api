require 'test_helper'

class TimelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timeline = timelines(:one)
  end

  test "should get index" do
    get timelines_url, as: :json
    assert_response :success
  end

  test "should create timeline" do
    assert_difference('Timeline.count') do
      post timelines_url, params: { timeline: { action_id: @timeline.action_id, date: @timeline.date, user_id: @timeline.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show timeline" do
    get timeline_url(@timeline), as: :json
    assert_response :success
  end

  test "should update timeline" do
    patch timeline_url(@timeline), params: { timeline: { action_id: @timeline.action_id, date: @timeline.date, user_id: @timeline.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete timeline_url(@timeline), as: :json
    end

    assert_response 204
  end
end
