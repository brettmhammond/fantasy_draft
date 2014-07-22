require 'test_helper'

class FantasyLeaguesControllerTest < ActionController::TestCase
  setup do
    @fantasy_league = fantasy_leagues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasy_leagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasy_league" do
    assert_difference('FantasyLeague.count') do
      post :create, fantasy_league: { name: @fantasy_league.name, password: @fantasy_league.password }
    end

    assert_redirected_to fantasy_league_path(assigns(:fantasy_league))
  end

  test "should show fantasy_league" do
    get :show, id: @fantasy_league
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasy_league
    assert_response :success
  end

  test "should update fantasy_league" do
    patch :update, id: @fantasy_league, fantasy_league: { name: @fantasy_league.name, password: @fantasy_league.password }
    assert_redirected_to fantasy_league_path(assigns(:fantasy_league))
  end

  test "should destroy fantasy_league" do
    assert_difference('FantasyLeague.count', -1) do
      delete :destroy, id: @fantasy_league
    end

    assert_redirected_to fantasy_leagues_path
  end
end
