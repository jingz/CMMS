require 'test_helper'

class AssetsControllerTest < ActionController::TestCase
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post :create, :asset => @asset.attributes
    end

    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should show asset" do
    get :show, :id => @asset.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @asset.to_param
    assert_response :success
  end

  test "should update asset" do
    put :update, :id => @asset.to_param, :asset => @asset.attributes
    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete :destroy, :id => @asset.to_param
    end

    assert_redirected_to assets_path
  end
end
