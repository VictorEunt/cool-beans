require 'test_helper'

class WeekendsControllerTest < ActionController::TestCase
  setup do
    @weekend = weekends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekend" do
    assert_difference('Weekend.count') do
      post :create, weekend: { description: @weekend.description, first_special: @weekend.first_special, first_special_description: @weekend.first_special_description, second_special: @weekend.second_special, second_special_description: @weekend.second_special_description, title: @weekend.title }
    end

    assert_redirected_to weekend_path(assigns(:weekend))
  end

  test "should show weekend" do
    get :show, id: @weekend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekend
    assert_response :success
  end

  test "should update weekend" do
    patch :update, id: @weekend, weekend: { description: @weekend.description, first_special: @weekend.first_special, first_special_description: @weekend.first_special_description, second_special: @weekend.second_special, second_special_description: @weekend.second_special_description, title: @weekend.title }
    assert_redirected_to weekend_path(assigns(:weekend))
  end

  test "should destroy weekend" do
    assert_difference('Weekend.count', -1) do
      delete :destroy, id: @weekend
    end

    assert_redirected_to weekends_path
  end
end
