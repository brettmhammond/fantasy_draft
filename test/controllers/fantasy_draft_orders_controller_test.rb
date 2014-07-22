require 'test_helper'

class FantasyDraftOrdersControllerTest < ActionController::TestCase
  setup do
    @fantasy_draft_order = fantasy_draft_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasy_draft_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasy_draft_order" do
    assert_difference('FantasyDraftOrder.count') do
      post :create, fantasy_draft_order: { fantasy_draft_id: @fantasy_draft_order.fantasy_draft_id, fantasy_league_id: @fantasy_draft_order.fantasy_league_id, fantasy_team_id: @fantasy_draft_order.fantasy_team_id, position: @fantasy_draft_order.position }
    end

    assert_redirected_to fantasy_draft_order_path(assigns(:fantasy_draft_order))
  end

  test "should show fantasy_draft_order" do
    get :show, id: @fantasy_draft_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasy_draft_order
    assert_response :success
  end

  test "should update fantasy_draft_order" do
    patch :update, id: @fantasy_draft_order, fantasy_draft_order: { fantasy_draft_id: @fantasy_draft_order.fantasy_draft_id, fantasy_league_id: @fantasy_draft_order.fantasy_league_id, fantasy_team_id: @fantasy_draft_order.fantasy_team_id, position: @fantasy_draft_order.position }
    assert_redirected_to fantasy_draft_order_path(assigns(:fantasy_draft_order))
  end

  test "should destroy fantasy_draft_order" do
    assert_difference('FantasyDraftOrder.count', -1) do
      delete :destroy, id: @fantasy_draft_order
    end

    assert_redirected_to fantasy_draft_orders_path
  end
end
