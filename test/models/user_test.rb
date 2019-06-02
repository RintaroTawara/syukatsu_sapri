require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def set_up
    @user = User.new(
      username: "Example User",
      email: "user@example.com",
      password: "password",
      password_confirmation: "password")
  end
end
