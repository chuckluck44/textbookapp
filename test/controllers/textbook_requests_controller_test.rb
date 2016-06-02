require 'test_helper'

class TextbookRequestsControllerTest < ActionController::TestCase
  setup do
    @textbook_request = textbook_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textbook_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textbook_request" do
    assert_difference('TextbookRequest.count') do
      post :create, textbook_request: { textbook_id: @textbook_request.textbook_id, user_id: @textbook_request.user_id }
    end

    assert_redirected_to textbook_request_path(assigns(:textbook_request))
  end

  test "should show textbook_request" do
    get :show, id: @textbook_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textbook_request
    assert_response :success
  end

  test "should update textbook_request" do
    patch :update, id: @textbook_request, textbook_request: { textbook_id: @textbook_request.textbook_id, user_id: @textbook_request.user_id }
    assert_redirected_to textbook_request_path(assigns(:textbook_request))
  end

  test "should destroy textbook_request" do
    assert_difference('TextbookRequest.count', -1) do
      delete :destroy, id: @textbook_request
    end

    assert_redirected_to textbook_requests_path
  end
end
