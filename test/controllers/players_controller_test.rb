require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { active: @player.active, college: @player.college, date_of_birth: @player.date_of_birth, ffn_player_id: @player.ffn_player_id, first_name: @player.first_name, height: @player.height, last_name: @player.last_name, league_id: @player.league_id, name: @player.name, position_id: @player.position_id, team_id: @player.team_id, uniform_number: @player.uniform_number, weight: @player.weight }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { active: @player.active, college: @player.college, date_of_birth: @player.date_of_birth, ffn_player_id: @player.ffn_player_id, first_name: @player.first_name, height: @player.height, last_name: @player.last_name, league_id: @player.league_id, name: @player.name, position_id: @player.position_id, team_id: @player.team_id, uniform_number: @player.uniform_number, weight: @player.weight }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
