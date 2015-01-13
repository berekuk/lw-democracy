require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "create without options" do
    assert_raises NoMethodError do
      post :create
    end
  end

  test "create without username" do
    assert_raises RuntimeError do
      post :create, { user: { something: "nothing" } }
    end
  end

  test "create" do
    post :create, { user: { username: "blah" } }
    assert_redirected_to root_path
    assert_equal session[:current_username], "blah"
  end

  test "logout" do
    post :create, { user: { username: "zzz" } }
    assert_redirected_to root_path
    assert_equal session[:current_username], "zzz"
    post :logout
    assert_redirected_to root_path
    assert_nil session[:current_username]
end
