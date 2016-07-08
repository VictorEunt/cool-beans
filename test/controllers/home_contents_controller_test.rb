require 'test_helper'

class HomeContentsControllerTest < ActionController::TestCase
  setup do
    @home_content = home_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_content" do
    assert_difference('HomeContent.count') do
      post :create, home_content: { name: @home_content.name }
    end

    assert_redirected_to home_content_path(assigns(:home_content))
  end

  test "should show home_content" do
    get :show, id: @home_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_content
    assert_response :success
  end

  test "should update home_content" do
    patch :update, id: @home_content, home_content: { name: @home_content.name }
    assert_redirected_to home_content_path(assigns(:home_content))
  end

  test "should destroy home_content" do
    assert_difference('HomeContent.count', -1) do
      delete :destroy, id: @home_content
    end

    assert_redirected_to home_contents_path
  end
end
