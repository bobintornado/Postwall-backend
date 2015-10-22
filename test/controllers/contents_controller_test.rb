require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post :create, params: { content: {  } }
    end

    assert_response 201
  end

  test "should show content" do
    get :show, params: { id: @content }
    assert_response :success
  end

  test "should update content" do
    patch :update, params: { id: @content, content: {  } }
    assert_response 200
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, params: { id: @content }
    end

    assert_response 204
  end
end
