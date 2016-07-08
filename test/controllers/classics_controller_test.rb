require 'test_helper'

class ClassicsControllerTest < ActionController::TestCase
  setup do
    @classic = classics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classic" do
    assert_difference('Classic.count') do
      post :create, classic: { description: @classic.description, first_classic: @classic.first_classic, first_classic_description: @classic.first_classic_description, second_classic: @classic.second_classic, second_classic_description: @classic.second_classic_description, third_classic: @classic.third_classic, third_classic_description: @classic.third_classic_description, title: @classic.title }
    end

    assert_redirected_to classic_path(assigns(:classic))
  end

  test "should show classic" do
    get :show, id: @classic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classic
    assert_response :success
  end

  test "should update classic" do
    patch :update, id: @classic, classic: { description: @classic.description, first_classic: @classic.first_classic, first_classic_description: @classic.first_classic_description, second_classic: @classic.second_classic, second_classic_description: @classic.second_classic_description, third_classic: @classic.third_classic, third_classic_description: @classic.third_classic_description, title: @classic.title }
    assert_redirected_to classic_path(assigns(:classic))
  end

  test "should destroy classic" do
    assert_difference('Classic.count', -1) do
      delete :destroy, id: @classic
    end

    assert_redirected_to classics_path
  end
end
