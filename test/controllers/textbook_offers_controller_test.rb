require 'test_helper'

class TextbookOffersControllerTest < ActionController::TestCase
  setup do
    @textbook_offer = textbook_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textbook_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textbook_offer" do
    assert_difference('TextbookOffer.count') do
      post :create, textbook_offer: { textbook_id: @textbook_offer.textbook_id, user_id: @textbook_offer.user_id }
    end

    assert_redirected_to textbook_offer_path(assigns(:textbook_offer))
  end

  test "should show textbook_offer" do
    get :show, id: @textbook_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textbook_offer
    assert_response :success
  end

  test "should update textbook_offer" do
    patch :update, id: @textbook_offer, textbook_offer: { textbook_id: @textbook_offer.textbook_id, user_id: @textbook_offer.user_id }
    assert_redirected_to textbook_offer_path(assigns(:textbook_offer))
  end

  test "should destroy textbook_offer" do
    assert_difference('TextbookOffer.count', -1) do
      delete :destroy, id: @textbook_offer
    end

    assert_redirected_to textbook_offers_path
  end
end
