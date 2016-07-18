require 'test_helper'

class SpecialsMenusControllerTest < ActionController::TestCase
  setup do
    @specials_menu = specials_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specials_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specials_menu" do
    assert_difference('SpecialsMenu.count') do
      post :create, specials_menu: { description: @specials_menu.description, name: @specials_menu.name }
    end

    assert_redirected_to specials_menu_path(assigns(:specials_menu))
  end

  test "should show specials_menu" do
    get :show, id: @specials_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specials_menu
    assert_response :success
  end

  test "should update specials_menu" do
    patch :update, id: @specials_menu, specials_menu: { description: @specials_menu.description, name: @specials_menu.name }
    assert_redirected_to specials_menu_path(assigns(:specials_menu))
  end

  test "should destroy specials_menu" do
    assert_difference('SpecialsMenu.count', -1) do
      delete :destroy, id: @specials_menu
    end

    assert_redirected_to specials_menus_path
  end
end
