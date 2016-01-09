require 'test_helper'

class LiveAboardsControllerTest < ActionController::TestCase
  setup do
    @live_aboard = live_aboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:live_aboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create live_aboard" do
    assert_difference('LiveAboard.count') do
      post :create, live_aboard: { address: @live_aboard.address, name: @live_aboard.name, phone: @live_aboard.phone, website: @live_aboard.website }
    end

    assert_redirected_to live_aboard_path(assigns(:live_aboard))
  end

  test "should show live_aboard" do
    get :show, id: @live_aboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @live_aboard
    assert_response :success
  end

  test "should update live_aboard" do
    patch :update, id: @live_aboard, live_aboard: { address: @live_aboard.address, name: @live_aboard.name, phone: @live_aboard.phone, website: @live_aboard.website }
    assert_redirected_to live_aboard_path(assigns(:live_aboard))
  end

  test "should destroy live_aboard" do
    assert_difference('LiveAboard.count', -1) do
      delete :destroy, id: @live_aboard
    end

    assert_redirected_to live_aboards_path
  end
end
