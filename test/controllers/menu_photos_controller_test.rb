require 'test_helper'

class MenuPhotosControllerTest < ActionController::TestCase
  setup do
    @menu_photo = menu_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_photo" do
    assert_difference('MenuPhoto.count') do
      post :create, menu_photo: { name: @menu_photo.name }
    end

    assert_redirected_to menu_photo_path(assigns(:menu_photo))
  end

  test "should show menu_photo" do
    get :show, id: @menu_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_photo
    assert_response :success
  end

  test "should update menu_photo" do
    patch :update, id: @menu_photo, menu_photo: { name: @menu_photo.name }
    assert_redirected_to menu_photo_path(assigns(:menu_photo))
  end

  test "should destroy menu_photo" do
    assert_difference('MenuPhoto.count', -1) do
      delete :destroy, id: @menu_photo
    end

    assert_redirected_to menu_photos_path
  end
end
