require 'test_helper'

class WallsControllerTest < ActionController::TestCase
  setup do
    @wall = walls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create wall" do
    assert_difference('Wall.count') do
      post :create, params: { wall: {  } }
    end

    assert_response 201
  end

  test "should show wall" do
    get :show, params: { id: @wall }
    assert_response :success
  end

  test "should update wall" do
    patch :update, params: { id: @wall, wall: {  } }
    assert_response 200
  end

  test "should destroy wall" do
    assert_difference('Wall.count', -1) do
      delete :destroy, params: { id: @wall }
    end

    assert_response 204
  end
end
