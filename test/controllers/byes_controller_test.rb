require 'test_helper'

class ByesControllerTest < ActionController::TestCase
  setup do
    @bye = byes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:byes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bye" do
    assert_difference('Bye.count') do
      post :create, bye: { team_id: @bye.team_id, week: @bye.week, year: @bye.year }
    end

    assert_redirected_to bye_path(assigns(:bye))
  end

  test "should show bye" do
    get :show, id: @bye
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bye
    assert_response :success
  end

  test "should update bye" do
    patch :update, id: @bye, bye: { team_id: @bye.team_id, week: @bye.week, year: @bye.year }
    assert_redirected_to bye_path(assigns(:bye))
  end

  test "should destroy bye" do
    assert_difference('Bye.count', -1) do
      delete :destroy, id: @bye
    end

    assert_redirected_to byes_path
  end
end
