require 'test_helper'

class FantasyPlayersControllerTest < ActionController::TestCase
  setup do
    @fantasy_player = fantasy_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasy_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasy_player" do
    assert_difference('FantasyPlayer.count') do
      post :create, fantasy_player: { fantasy_draft_id: @fantasy_player.fantasy_draft_id, fantasy_league_id: @fantasy_player.fantasy_league_id, fantasy_team_id: @fantasy_player.fantasy_team_id, player_id: @fantasy_player.player_id }
    end

    assert_redirected_to fantasy_player_path(assigns(:fantasy_player))
  end

  test "should show fantasy_player" do
    get :show, id: @fantasy_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasy_player
    assert_response :success
  end

  test "should update fantasy_player" do
    patch :update, id: @fantasy_player, fantasy_player: { fantasy_draft_id: @fantasy_player.fantasy_draft_id, fantasy_league_id: @fantasy_player.fantasy_league_id, fantasy_team_id: @fantasy_player.fantasy_team_id, player_id: @fantasy_player.player_id }
    assert_redirected_to fantasy_player_path(assigns(:fantasy_player))
  end

  test "should destroy fantasy_player" do
    assert_difference('FantasyPlayer.count', -1) do
      delete :destroy, id: @fantasy_player
    end

    assert_redirected_to fantasy_players_path
  end
end
