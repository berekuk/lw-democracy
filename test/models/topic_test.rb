require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "should not save topic without a title" do
    topic = Topic.new
    assert_not topic.save, "Saved the topic without a title"
  end
end
