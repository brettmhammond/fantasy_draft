require 'test_helper'

class FantasyDraftStylesControllerTest < ActionController::TestCase
  setup do
    @fantasy_draft_style = fantasy_draft_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasy_draft_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasy_draft_style" do
    assert_difference('FantasyDraftStyle.count') do
      post :create, fantasy_draft_style: { name: @fantasy_draft_style.name }
    end

    assert_redirected_to fantasy_draft_style_path(assigns(:fantasy_draft_style))
  end

  test "should show fantasy_draft_style" do
    get :show, id: @fantasy_draft_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasy_draft_style
    assert_response :success
  end

  test "should update fantasy_draft_style" do
    patch :update, id: @fantasy_draft_style, fantasy_draft_style: { name: @fantasy_draft_style.name }
    assert_redirected_to fantasy_draft_style_path(assigns(:fantasy_draft_style))
  end

  test "should destroy fantasy_draft_style" do
    assert_difference('FantasyDraftStyle.count', -1) do
      delete :destroy, id: @fantasy_draft_style
    end

    assert_redirected_to fantasy_draft_styles_path
  end
end
