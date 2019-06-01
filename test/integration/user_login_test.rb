require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
    @article = articles(:one)
  end
  
  test "login with invalid information" do
    
  end
end
