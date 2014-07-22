require 'test_helper'

class PlayerAuctionValuesControllerTest < ActionController::TestCase
  setup do
    @player_auction_value = player_auction_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_auction_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_auction_value" do
    assert_difference('PlayerAuctionValue.count') do
      post :create, player_auction_value: { avg_price: @player_auction_value.avg_price, max_price: @player_auction_value.max_price, min_price: @player_auction_value.min_price, player_id: @player_auction_value.player_id, year: @player_auction_value.year }
    end

    assert_redirected_to player_auction_value_path(assigns(:player_auction_value))
  end

  test "should show player_auction_value" do
    get :show, id: @player_auction_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_auction_value
    assert_response :success
  end

  test "should update player_auction_value" do
    patch :update, id: @player_auction_value, player_auction_value: { avg_price: @player_auction_value.avg_price, max_price: @player_auction_value.max_price, min_price: @player_auction_value.min_price, player_id: @player_auction_value.player_id, year: @player_auction_value.year }
    assert_redirected_to player_auction_value_path(assigns(:player_auction_value))
  end

  test "should destroy player_auction_value" do
    assert_difference('PlayerAuctionValue.count', -1) do
      delete :destroy, id: @player_auction_value
    end

    assert_redirected_to player_auction_values_path
  end
end
