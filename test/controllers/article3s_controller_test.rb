require 'test_helper'

class Article3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article3 = article3s(:one)
  end

  test "should get index" do
    get article3s_url
    assert_response :success
  end

  test "should get new" do
    get new_article3_url
    assert_response :success
  end

  test "should create article3" do
    assert_difference('Article3.count') do
      post article3s_url, params: { article3: { body: @article3.body, title: @article3.title } }
    end

    assert_redirected_to article3_url(Article3.last)
  end

  test "should show article3" do
    get article3_url(@article3)
    assert_response :success
  end

  test "should get edit" do
    get edit_article3_url(@article3)
    assert_response :success
  end

  test "should update article3" do
    patch article3_url(@article3), params: { article3: { body: @article3.body, title: @article3.title } }
    assert_redirected_to article3_url(@article3)
  end

  test "should destroy article3" do
    assert_difference('Article3.count', -1) do
      delete article3_url(@article3)
    end

    assert_redirected_to article3s_url
  end
end
