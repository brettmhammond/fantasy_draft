require 'test_helper'

class FantasyLeagueFantasyTeamsControllerTest < ActionController::TestCase
  setup do
    @fantasy_league_fantasy_team = fantasy_league_fantasy_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasy_league_fantasy_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasy_league_fantasy_team" do
    assert_difference('FantasyLeagueFantasyTeam.count') do
      post :create, fantasy_league_fantasy_team: { fantasy_league_id: @fantasy_league_fantasy_team.fantasy_league_id, fantasy_team_id: @fantasy_league_fantasy_team.fantasy_team_id }
    end

    assert_redirected_to fantasy_league_fantasy_team_path(assigns(:fantasy_league_fantasy_team))
  end

  test "should show fantasy_league_fantasy_team" do
    get :show, id: @fantasy_league_fantasy_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasy_league_fantasy_team
    assert_response :success
  end

  test "should update fantasy_league_fantasy_team" do
    patch :update, id: @fantasy_league_fantasy_team, fantasy_league_fantasy_team: { fantasy_league_id: @fantasy_league_fantasy_team.fantasy_league_id, fantasy_team_id: @fantasy_league_fantasy_team.fantasy_team_id }
    assert_redirected_to fantasy_league_fantasy_team_path(assigns(:fantasy_league_fantasy_team))
  end

  test "should destroy fantasy_league_fantasy_team" do
    assert_difference('FantasyLeagueFantasyTeam.count', -1) do
      delete :destroy, id: @fantasy_league_fantasy_team
    end

    assert_redirected_to fantasy_league_fantasy_teams_path
  end
end
