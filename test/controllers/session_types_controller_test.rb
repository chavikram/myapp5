require 'test_helper'

class SessionTypesControllerTest < ActionController::TestCase
  setup do
    @session_type = session_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_type" do
    assert_difference('SessionType.count') do
      post :create, session_type: { name: @session_type.name }
    end

    assert_redirected_to session_type_path(assigns(:session_type))
  end

  test "should show session_type" do
    get :show, id: @session_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_type
    assert_response :success
  end

  test "should update session_type" do
    patch :update, id: @session_type, session_type: { name: @session_type.name }
    assert_redirected_to session_type_path(assigns(:session_type))
  end

  test "should destroy session_type" do
    assert_difference('SessionType.count', -1) do
      delete :destroy, id: @session_type
    end

    assert_redirected_to session_types_path
  end
end
