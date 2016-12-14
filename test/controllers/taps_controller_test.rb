require 'test_helper'

class TapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tap = taps(:one)
  end

  test "should get index" do
    get taps_url, as: :json
    assert_response :success
  end

  test "should create tap" do
    assert_difference('Tap.count') do
      post taps_url, params: { tap: { email: @tap.email, success: @tap.success, time: @tap.time, word: @tap.word } }, as: :json
    end

    assert_response 201
  end

  test "should show tap" do
    get tap_url(@tap), as: :json
    assert_response :success
  end

  test "should update tap" do
    patch tap_url(@tap), params: { tap: { email: @tap.email, success: @tap.success, time: @tap.time, word: @tap.word } }, as: :json
    assert_response 200
  end

  test "should destroy tap" do
    assert_difference('Tap.count', -1) do
      delete tap_url(@tap), as: :json
    end

    assert_response 204
  end
end
