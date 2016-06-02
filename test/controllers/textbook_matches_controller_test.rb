require 'test_helper'

class TextbookMatchesControllerTest < ActionController::TestCase
  setup do
    @textbook_match = textbook_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textbook_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textbook_match" do
    assert_difference('TextbookMatch.count') do
      post :create, textbook_match: { from_user_id: @textbook_match.from_user_id, textbook_id: @textbook_match.textbook_id, to_user_id: @textbook_match.to_user_id }
    end

    assert_redirected_to textbook_match_path(assigns(:textbook_match))
  end

  test "should show textbook_match" do
    get :show, id: @textbook_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textbook_match
    assert_response :success
  end

  test "should update textbook_match" do
    patch :update, id: @textbook_match, textbook_match: { from_user_id: @textbook_match.from_user_id, textbook_id: @textbook_match.textbook_id, to_user_id: @textbook_match.to_user_id }
    assert_redirected_to textbook_match_path(assigns(:textbook_match))
  end

  test "should destroy textbook_match" do
    assert_difference('TextbookMatch.count', -1) do
      delete :destroy, id: @textbook_match
    end

    assert_redirected_to textbook_matches_path
  end
end
