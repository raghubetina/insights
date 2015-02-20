require 'test_helper'

class PersonaQuestionsControllerTest < ActionController::TestCase
  setup do
    @persona_question = persona_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persona_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona_question" do
    assert_difference('PersonaQuestion.count') do
      post :create, persona_question: { persona_id: @persona_question.persona_id, question_id: @persona_question.question_id }
    end

    assert_redirected_to persona_question_path(assigns(:persona_question))
  end

  test "should show persona_question" do
    get :show, id: @persona_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona_question
    assert_response :success
  end

  test "should update persona_question" do
    patch :update, id: @persona_question, persona_question: { persona_id: @persona_question.persona_id, question_id: @persona_question.question_id }
    assert_redirected_to persona_question_path(assigns(:persona_question))
  end

  test "should destroy persona_question" do
    assert_difference('PersonaQuestion.count', -1) do
      delete :destroy, id: @persona_question
    end

    assert_redirected_to persona_questions_path
  end
end
