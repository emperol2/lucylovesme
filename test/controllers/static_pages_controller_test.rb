require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  setup do
    @static_page = static_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:static_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static_page" do
    assert_difference('StaticPage.count') do
      post :create, static_page: { about: @static_page.about, skills: @static_page.skills, tag1: @static_page.tag1, tag2: @static_page.tag2, tag3: @static_page.tag3, tag4: @static_page.tag4, thinking: @static_page.thinking }
    end

    assert_redirected_to static_page_path(assigns(:static_page))
  end

  test "should show static_page" do
    get :show, id: @static_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @static_page
    assert_response :success
  end

  test "should update static_page" do
    patch :update, id: @static_page, static_page: { about: @static_page.about, skills: @static_page.skills, tag1: @static_page.tag1, tag2: @static_page.tag2, tag3: @static_page.tag3, tag4: @static_page.tag4, thinking: @static_page.thinking }
    assert_redirected_to static_page_path(assigns(:static_page))
  end

  test "should destroy static_page" do
    assert_difference('StaticPage.count', -1) do
      delete :destroy, id: @static_page
    end

    assert_redirected_to static_pages_path
  end
end
