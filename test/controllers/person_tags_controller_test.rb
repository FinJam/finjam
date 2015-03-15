require 'test_helper'

class PersonTagsControllerTest < ActionController::TestCase
  setup do
    @person_tag = person_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_tag" do
    assert_difference('PersonTag.count') do
      post :create, person_tag: { person_id: @person_tag.person_id, tag_id: @person_tag.tag_id }
    end

    assert_redirected_to person_tag_path(assigns(:person_tag))
  end

  test "should show person_tag" do
    get :show, id: @person_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_tag
    assert_response :success
  end

  test "should update person_tag" do
    patch :update, id: @person_tag, person_tag: { person_id: @person_tag.person_id, tag_id: @person_tag.tag_id }
    assert_redirected_to person_tag_path(assigns(:person_tag))
  end

  test "should destroy person_tag" do
    assert_difference('PersonTag.count', -1) do
      delete :destroy, id: @person_tag
    end

    assert_redirected_to person_tags_path
  end
end
