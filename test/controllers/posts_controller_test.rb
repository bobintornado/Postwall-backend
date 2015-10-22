require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, params: { post: {  } }
    end

    assert_response 201
  end

  test "should show post" do
    get :show, params: { id: @post }
    assert_response :success
  end

  test "should update post" do
    patch :update, params: { id: @post, post: {  } }
    assert_response 200
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, params: { id: @post }
    end

    assert_response 204
  end
end
