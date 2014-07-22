require 'test_helper'

class PlayerRanksControllerTest < ActionController::TestCase
  setup do
    @player_rank = player_ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_rank" do
    assert_difference('PlayerRank.count') do
      post :create, player_rank: { overall_rank: @player_rank.overall_rank, player_id: @player_rank.player_id, position_rank: @player_rank.position_rank, year: @player_rank.year }
    end

    assert_redirected_to player_rank_path(assigns(:player_rank))
  end

  test "should show player_rank" do
    get :show, id: @player_rank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_rank
    assert_response :success
  end

  test "should update player_rank" do
    patch :update, id: @player_rank, player_rank: { overall_rank: @player_rank.overall_rank, player_id: @player_rank.player_id, position_rank: @player_rank.position_rank, year: @player_rank.year }
    assert_redirected_to player_rank_path(assigns(:player_rank))
  end

  test "should destroy player_rank" do
    assert_difference('PlayerRank.count', -1) do
      delete :destroy, id: @player_rank
    end

    assert_redirected_to player_ranks_path
  end
end
