require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers
  
  def setup
    @article = articles(:one)
  end
  
  test "should redirect create when not logged in" do
    assert_no_difference 'Article.count' do
      post articles_path, params: { article: {title: "aaa", description: "aaa"} }
    end
    assert_redirected_to user_session_path
  end
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Article.count' do
      delete article_path(@article)
    end
    assert_redirected_to user_session_path
  end
  
  test "should redirect show when not logged in" do
    get article_path(@article)
    assert_redirected_to user_session_path
  end
  
  test "should redirect edit when not logged in" do
    get edit_article_path(@article)
    assert_redirected_to user_session_path
  end
  
  test "should redirect update when not logged in" do
    put article_path(@article)
    assert_redirected_to user_session_path
  end
  
  test "should redirect destroy for wrong article" do
    @user = users( :michael )
    login_as(@user, :scope => :user)
    article = articles(:two)
    assert_no_difference 'Article.count' do
      delete article_path(article)
    end
    assert_redirected_to root_url
  end

end
