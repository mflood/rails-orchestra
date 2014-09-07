require 'test_helper'

class PerformanceTypesControllerTest < ActionController::TestCase
  setup do
    @performance_type = performance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_type" do
    assert_difference('PerformanceType.count') do
      post :create, performance_type: { name: @performance_type.name, notes: @performance_type.notes }
    end

    assert_redirected_to performance_type_path(assigns(:performance_type))
  end

  test "should show performance_type" do
    get :show, id: @performance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance_type
    assert_response :success
  end

  test "should update performance_type" do
    patch :update, id: @performance_type, performance_type: { name: @performance_type.name, notes: @performance_type.notes }
    assert_redirected_to performance_type_path(assigns(:performance_type))
  end

  test "should destroy performance_type" do
    assert_difference('PerformanceType.count', -1) do
      delete :destroy, id: @performance_type
    end

    assert_redirected_to performance_types_path
  end
end
