require 'test_helper'

class InvTypesControllerTest < ActionController::TestCase
  setup do
    @inv_type = inv_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inv_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inv_type" do
    assert_difference('InvType.count') do
      post :create, :inv_type => @inv_type.attributes
    end

    assert_redirected_to inv_type_path(assigns(:inv_type))
  end

  test "should show inv_type" do
    get :show, :id => @inv_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inv_type.to_param
    assert_response :success
  end

  test "should update inv_type" do
    put :update, :id => @inv_type.to_param, :inv_type => @inv_type.attributes
    assert_redirected_to inv_type_path(assigns(:inv_type))
  end

  test "should destroy inv_type" do
    assert_difference('InvType.count', -1) do
      delete :destroy, :id => @inv_type.to_param
    end

    assert_redirected_to inv_types_path
  end
end
