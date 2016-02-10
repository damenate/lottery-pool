require 'test_helper'

class OfficePoolsControllerTest < ActionController::TestCase
  setup do
    @office_pool = office_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_pool" do
    assert_difference('OfficePool.count') do
      post :create, office_pool: { name: @office_pool.name }
    end

    assert_redirected_to office_pool_path(assigns(:office_pool))
  end

  test "should show office_pool" do
    get :show, id: @office_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_pool
    assert_response :success
  end

  test "should update office_pool" do
    patch :update, id: @office_pool, office_pool: { name: @office_pool.name }
    assert_redirected_to office_pool_path(assigns(:office_pool))
  end

  test "should destroy office_pool" do
    assert_difference('OfficePool.count', -1) do
      delete :destroy, id: @office_pool
    end

    assert_redirected_to office_pools_path
  end
end
