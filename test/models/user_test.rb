require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "username is required" do
    assert_not User.new.save
  end
end
