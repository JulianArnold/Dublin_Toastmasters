require 'test_helper'

class HowToFindUsControllerTest < ActionController::TestCase
  setup do
    @how_to_find_u = how_to_find_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_to_find_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_to_find_u" do
    assert_difference('HowToFindU.count') do
      post :create, how_to_find_u: { description: @how_to_find_u.description, image_url: @how_to_find_u.image_url, title: @how_to_find_u.title }
    end

    assert_redirected_to how_to_find_u_path(assigns(:how_to_find_u))
  end

  test "should show how_to_find_u" do
    get :show, id: @how_to_find_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_to_find_u
    assert_response :success
  end

  test "should update how_to_find_u" do
    put :update, id: @how_to_find_u, how_to_find_u: { description: @how_to_find_u.description, image_url: @how_to_find_u.image_url, title: @how_to_find_u.title }
    assert_redirected_to how_to_find_u_path(assigns(:how_to_find_u))
  end

  test "should destroy how_to_find_u" do
    assert_difference('HowToFindU.count', -1) do
      delete :destroy, id: @how_to_find_u
    end

    assert_redirected_to how_to_find_us_path
  end
end
