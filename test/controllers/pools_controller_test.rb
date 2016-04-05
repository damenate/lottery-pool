require 'test_helper'

class PoolsControllerTest < ActionController::TestCase
  setup do
    @pool = pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pool" do
    assert_difference('Pool.count') do
      post :create, pool: { name: @pool.name }
    end

    assert_redirected_to pool_path(assigns(:pool))
  end

  test "should show pool" do
    get :show, id: @pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pool
    assert_response :success
  end

  test "should update pool" do
    patch :update, id: @pool, pool: { name: @pool.name }
    assert_redirected_to pool_path(assigns(:pool))
  end

  test "should destroy pool" do
    assert_difference('Pool.count', -1) do
      delete :destroy, id: @pool
    end

    assert_redirected_to pools_path
  end
end
