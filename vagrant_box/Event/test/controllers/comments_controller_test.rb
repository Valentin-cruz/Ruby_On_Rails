require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get content:text" do
    get comments_content:text_url
    assert_response :success
  end

  test "should get user:references" do
    get comments_user:references_url
    assert_response :success
  end

  test "should get event:references" do
    get comments_event:references_url
    assert_response :success
  end

end
