require 'test_helper'

class HeroImagesControllerTest < ActionController::TestCase
  setup do
    @hero_image = hero_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hero_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero_image" do
    assert_difference('HeroImage.count') do
      post :create, hero_image: { name: @hero_image.name }
    end

    assert_redirected_to hero_image_path(assigns(:hero_image))
  end

  test "should show hero_image" do
    get :show, id: @hero_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hero_image
    assert_response :success
  end

  test "should update hero_image" do
    patch :update, id: @hero_image, hero_image: { name: @hero_image.name }
    assert_redirected_to hero_image_path(assigns(:hero_image))
  end

  test "should destroy hero_image" do
    assert_difference('HeroImage.count', -1) do
      delete :destroy, id: @hero_image
    end

    assert_redirected_to hero_images_path
  end
end
