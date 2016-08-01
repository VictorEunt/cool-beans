require 'test_helper'

class AboutContentsControllerTest < ActionController::TestCase
  setup do
    @about_content = about_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_content" do
    assert_difference('AboutContent.count') do
      post :create, about_content: { name: @about_content.name, part_five: @about_content.part_five, part_four: @about_content.part_four, part_one: @about_content.part_one, part_six: @about_content.part_six, part_three: @about_content.part_three, part_two: @about_content.part_two }
    end

    assert_redirected_to about_content_path(assigns(:about_content))
  end

  test "should show about_content" do
    get :show, id: @about_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_content
    assert_response :success
  end

  test "should update about_content" do
    patch :update, id: @about_content, about_content: { name: @about_content.name, part_five: @about_content.part_five, part_four: @about_content.part_four, part_one: @about_content.part_one, part_six: @about_content.part_six, part_three: @about_content.part_three, part_two: @about_content.part_two }
    assert_redirected_to about_content_path(assigns(:about_content))
  end

  test "should destroy about_content" do
    assert_difference('AboutContent.count', -1) do
      delete :destroy, id: @about_content
    end

    assert_redirected_to about_contents_path
  end
end
