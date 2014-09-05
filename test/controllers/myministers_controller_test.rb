require 'test_helper'

class MyministersControllerTest < ActionController::TestCase
  setup do
    @myminister = myministers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myministers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myminister" do
    assert_difference('Myminister.count') do
      post :create, myminister: { ministry_id: @myminister.ministry_id, name: @myminister.name }
    end

    assert_redirected_to myminister_path(assigns(:myminister))
  end

  test "should show myminister" do
    get :show, id: @myminister
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myminister
    assert_response :success
  end

  test "should update myminister" do
    patch :update, id: @myminister, myminister: { ministry_id: @myminister.ministry_id, name: @myminister.name }
    assert_redirected_to myminister_path(assigns(:myminister))
  end

  test "should destroy myminister" do
    assert_difference('Myminister.count', -1) do
      delete :destroy, id: @myminister
    end

    assert_redirected_to myministers_path
  end
end
