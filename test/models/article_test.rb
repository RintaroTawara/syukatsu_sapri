require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @article = @user.articles.build(title: "hello", description: "rintaro tawara")
  end
  
  test "should be valid" do
    assert @article.valid?
  end
  
  test "user id should be present" do
    @article.user_id = nil
    assert_not @article.valid?
  end
  
  test "title should be present" do
    @article.title = "  "
    assert_not @article.valid?
  end
  
  test "description should be present" do
    @article.description = "  "
    assert_not @article.valid?
  end
end
