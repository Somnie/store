require 'test_helper'

class SiteInfosControllerTest < ActionController::TestCase
  setup do
    @site_info = site_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_info" do
    assert_difference('SiteInfo.count') do
      post :create, :site_info => @site_info.attributes
    end

    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should show site_info" do
    get :show, :id => @site_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @site_info.to_param
    assert_response :success
  end

  test "should update site_info" do
    put :update, :id => @site_info.to_param, :site_info => @site_info.attributes
    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should destroy site_info" do
    assert_difference('SiteInfo.count', -1) do
      delete :destroy, :id => @site_info.to_param
    end

    assert_redirected_to site_infos_path
  end
end
