require 'test_helper'

class SectionOfficersControllerTest < ActionController::TestCase
  setup do
    @section_officer = section_officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_officer" do
    assert_difference('SectionOfficer.count') do
      post :create, section_officer: { name: @section_officer.name }
    end

    assert_redirected_to section_officer_path(assigns(:section_officer))
  end

  test "should show section_officer" do
    get :show, id: @section_officer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_officer
    assert_response :success
  end

  test "should update section_officer" do
    patch :update, id: @section_officer, section_officer: { name: @section_officer.name }
    assert_redirected_to section_officer_path(assigns(:section_officer))
  end

  test "should destroy section_officer" do
    assert_difference('SectionOfficer.count', -1) do
      delete :destroy, id: @section_officer
    end

    assert_redirected_to section_officers_path
  end
end
