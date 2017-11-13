require 'test_helper'

class StumanagersControllerTest < ActionController::TestCase
  setup do
    @stumanager = stumanagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stumanagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stumanager" do
    assert_difference('Stumanager.count') do
      post :create, stumanager: { deptname: @stumanager.deptname, name: @stumanager.name, score: @stumanager.score }
    end

    assert_redirected_to stumanager_path(assigns(:stumanager))
  end

  test "should show stumanager" do
    get :show, id: @stumanager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stumanager
    assert_response :success
  end

  test "should update stumanager" do
    patch :update, id: @stumanager, stumanager: { deptname: @stumanager.deptname, name: @stumanager.name, score: @stumanager.score }
    assert_redirected_to stumanager_path(assigns(:stumanager))
  end

  test "should destroy stumanager" do
    assert_difference('Stumanager.count', -1) do
      delete :destroy, id: @stumanager
    end

    assert_redirected_to stumanagers_path
  end
end
