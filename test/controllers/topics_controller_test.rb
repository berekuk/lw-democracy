require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  test "topics list" do
    get :index
    assert_response :success
    assert_not_nil assigns :topics
    assert_select 'h1', 'All voting topics'
  end
end
