require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  test "topics list" do
    get :index
    assert_response :success
    assert_not_nil assigns :topics
    assert_select 'h1', 'All voting topics'
  end

  test "create topic" do
    post :create, { topic: { title: "blah" } }
    assert_redirected_to root_path
    @topic = Topic.find_by title: "blah"
    assert_not_nil @topic
    assert_equal @topic.title, "blah"
  end
end
