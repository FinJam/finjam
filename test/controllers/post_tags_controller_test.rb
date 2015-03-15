require 'test_helper'

class PostTagsControllerTest < ActionController::TestCase
  setup do
    @post_tag = post_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_tag" do
    assert_difference('PostTag.count') do
      post :create, post_tag: { post_id: @post_tag.post_id, tag_id: @post_tag.tag_id }
    end

    assert_redirected_to post_tag_path(assigns(:post_tag))
  end

  test "should show post_tag" do
    get :show, id: @post_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_tag
    assert_response :success
  end

  test "should update post_tag" do
    patch :update, id: @post_tag, post_tag: { post_id: @post_tag.post_id, tag_id: @post_tag.tag_id }
    assert_redirected_to post_tag_path(assigns(:post_tag))
  end

  test "should destroy post_tag" do
    assert_difference('PostTag.count', -1) do
      delete :destroy, id: @post_tag
    end

    assert_redirected_to post_tags_path
  end
end
