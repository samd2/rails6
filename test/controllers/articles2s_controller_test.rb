require 'test_helper'

class Articles2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articles2 = articles2s(:one)
  end

  test "should get index" do
    get articles2s_url
    assert_response :success
  end

  test "should get new" do
    get new_articles2_url
    assert_response :success
  end

  test "should create articles2" do
    assert_difference('Articles2.count') do
      post articles2s_url, params: { articles2: { body: @articles2.body, title: @articles2.title } }
    end

    assert_redirected_to articles2_url(Articles2.last)
  end

  test "should show articles2" do
    get articles2_url(@articles2)
    assert_response :success
  end

  test "should get edit" do
    get edit_articles2_url(@articles2)
    assert_response :success
  end

  test "should update articles2" do
    patch articles2_url(@articles2), params: { articles2: { body: @articles2.body, title: @articles2.title } }
    assert_redirected_to articles2_url(@articles2)
  end

  test "should destroy articles2" do
    assert_difference('Articles2.count', -1) do
      delete articles2_url(@articles2)
    end

    assert_redirected_to articles2s_url
  end
end
