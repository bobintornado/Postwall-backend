require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, params: { comment: {  } }
    end

    assert_response 201
  end

  test "should show comment" do
    get :show, params: { id: @comment }
    assert_response :success
  end

  test "should update comment" do
    patch :update, params: { id: @comment, comment: {  } }
    assert_response 200
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, params: { id: @comment }
    end

    assert_response 204
  end
end
