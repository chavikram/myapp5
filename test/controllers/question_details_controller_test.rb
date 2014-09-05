require 'test_helper'

class QuestionDetailsControllerTest < ActionController::TestCase
  setup do
    @question_detail = question_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_detail" do
    assert_difference('QuestionDetail.count') do
      post :create, question_detail: { answer_text: @question_detail.answer_text, question_id: @question_detail.question_id, question_text: @question_detail.question_text, statement_text: @question_detail.statement_text }
    end

    assert_redirected_to question_detail_path(assigns(:question_detail))
  end

  test "should show question_detail" do
    get :show, id: @question_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_detail
    assert_response :success
  end

  test "should update question_detail" do
    patch :update, id: @question_detail, question_detail: { answer_text: @question_detail.answer_text, question_id: @question_detail.question_id, question_text: @question_detail.question_text, statement_text: @question_detail.statement_text }
    assert_redirected_to question_detail_path(assigns(:question_detail))
  end

  test "should destroy question_detail" do
    assert_difference('QuestionDetail.count', -1) do
      delete :destroy, id: @question_detail
    end

    assert_redirected_to question_details_path
  end
end
