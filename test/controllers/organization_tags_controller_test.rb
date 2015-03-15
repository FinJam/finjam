require 'test_helper'

class OrganizationTagsControllerTest < ActionController::TestCase
  setup do
    @organization_tag = organization_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_tag" do
    assert_difference('OrganizationTag.count') do
      post :create, organization_tag: { organization_id: @organization_tag.organization_id, tag_id: @organization_tag.tag_id }
    end

    assert_redirected_to organization_tag_path(assigns(:organization_tag))
  end

  test "should show organization_tag" do
    get :show, id: @organization_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_tag
    assert_response :success
  end

  test "should update organization_tag" do
    patch :update, id: @organization_tag, organization_tag: { organization_id: @organization_tag.organization_id, tag_id: @organization_tag.tag_id }
    assert_redirected_to organization_tag_path(assigns(:organization_tag))
  end

  test "should destroy organization_tag" do
    assert_difference('OrganizationTag.count', -1) do
      delete :destroy, id: @organization_tag
    end

    assert_redirected_to organization_tags_path
  end
end
