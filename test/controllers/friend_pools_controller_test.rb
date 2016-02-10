require 'test_helper'

class FriendPoolsControllerTest < ActionController::TestCase
  setup do
    @friend_pool = friend_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friend_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend_pool" do
    assert_difference('FriendPool.count') do
      post :create, friend_pool: { name: @friend_pool.name }
    end

    assert_redirected_to friend_pool_path(assigns(:friend_pool))
  end

  test "should show friend_pool" do
    get :show, id: @friend_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friend_pool
    assert_response :success
  end

  test "should update friend_pool" do
    patch :update, id: @friend_pool, friend_pool: { name: @friend_pool.name }
    assert_redirected_to friend_pool_path(assigns(:friend_pool))
  end

  test "should destroy friend_pool" do
    assert_difference('FriendPool.count', -1) do
      delete :destroy, id: @friend_pool
    end

    assert_redirected_to friend_pools_path
  end
end
