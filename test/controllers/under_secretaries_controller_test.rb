require 'test_helper'

class UnderSecretariesControllerTest < ActionController::TestCase
  setup do
    @under_secretary = under_secretaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:under_secretaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create under_secretary" do
    assert_difference('UnderSecretary.count') do
      post :create, under_secretary: { name: @under_secretary.name }
    end

    assert_redirected_to under_secretary_path(assigns(:under_secretary))
  end

  test "should show under_secretary" do
    get :show, id: @under_secretary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @under_secretary
    assert_response :success
  end

  test "should update under_secretary" do
    patch :update, id: @under_secretary, under_secretary: { name: @under_secretary.name }
    assert_redirected_to under_secretary_path(assigns(:under_secretary))
  end

  test "should destroy under_secretary" do
    assert_difference('UnderSecretary.count', -1) do
      delete :destroy, id: @under_secretary
    end

    assert_redirected_to under_secretaries_path
  end
end
