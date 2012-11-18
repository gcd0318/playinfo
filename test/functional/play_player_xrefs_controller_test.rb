require 'test_helper'

class PlayPlayerXrefsControllerTest < ActionController::TestCase
  setup do
    @play_player_xref = play_player_xrefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:play_player_xrefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play_player_xref" do
    assert_difference('PlayPlayerXref.count') do
      post :create, play_player_xref: { play_id: @play_player_xref.play_id, user_id: @play_player_xref.user_id }
    end

    assert_redirected_to play_player_xref_path(assigns(:play_player_xref))
  end

  test "should show play_player_xref" do
    get :show, id: @play_player_xref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play_player_xref
    assert_response :success
  end

  test "should update play_player_xref" do
    put :update, id: @play_player_xref, play_player_xref: { play_id: @play_player_xref.play_id, user_id: @play_player_xref.user_id }
    assert_redirected_to play_player_xref_path(assigns(:play_player_xref))
  end

  test "should destroy play_player_xref" do
    assert_difference('PlayPlayerXref.count', -1) do
      delete :destroy, id: @play_player_xref
    end

    assert_redirected_to play_player_xrefs_path
  end
end
