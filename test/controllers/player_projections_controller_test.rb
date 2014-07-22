require 'test_helper'

class PlayerProjectionsControllerTest < ActionController::TestCase
  setup do
    @player_projection = player_projections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_projections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_projection" do
    assert_difference('PlayerProjection.count') do
      post :create, player_projection: { attempts: @player_projection.attempts, completions: @player_projection.completions, fantasy_points: @player_projection.fantasy_points, pass_ints: @player_projection.pass_ints, pass_tds: @player_projection.pass_tds, pass_yards: @player_projection.pass_yards, player_id: @player_projection.player_id, rush_tds: @player_projection.rush_tds, rush_yards: @player_projection.rush_yards, year: @player_projection.year }
    end

    assert_redirected_to player_projection_path(assigns(:player_projection))
  end

  test "should show player_projection" do
    get :show, id: @player_projection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_projection
    assert_response :success
  end

  test "should update player_projection" do
    patch :update, id: @player_projection, player_projection: { attempts: @player_projection.attempts, completions: @player_projection.completions, fantasy_points: @player_projection.fantasy_points, pass_ints: @player_projection.pass_ints, pass_tds: @player_projection.pass_tds, pass_yards: @player_projection.pass_yards, player_id: @player_projection.player_id, rush_tds: @player_projection.rush_tds, rush_yards: @player_projection.rush_yards, year: @player_projection.year }
    assert_redirected_to player_projection_path(assigns(:player_projection))
  end

  test "should destroy player_projection" do
    assert_difference('PlayerProjection.count', -1) do
      delete :destroy, id: @player_projection
    end

    assert_redirected_to player_projections_path
  end
end
