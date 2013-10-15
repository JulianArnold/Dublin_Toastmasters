require 'test_helper'

class MembersSectionsControllerTest < ActionController::TestCase
  setup do
    @members_section = members_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create members_section" do
    assert_difference('MembersSection.count') do
      post :create, members_section: { description: @members_section.description, image_url: @members_section.image_url, title: @members_section.title }
    end

    assert_redirected_to members_section_path(assigns(:members_section))
  end

  test "should show members_section" do
    get :show, id: @members_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @members_section
    assert_response :success
  end

  test "should update members_section" do
    put :update, id: @members_section, members_section: { description: @members_section.description, image_url: @members_section.image_url, title: @members_section.title }
    assert_redirected_to members_section_path(assigns(:members_section))
  end

  test "should destroy members_section" do
    assert_difference('MembersSection.count', -1) do
      delete :destroy, id: @members_section
    end

    assert_redirected_to members_sections_path
  end
end
