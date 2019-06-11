require 'test_helper'

class ArticleFlowTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers

  def setup
    @user = users(:michael)
    login_as(@user, :scope => :user)
    @article = @user.articles.create!(title: "hello", description: "rintaro tawara", company: "google")
  end
  
  test "can create an article" do
    get new_article_path
    assert_response :success
    assert_response :success do
      post articles_path, params: { article: {title: "aaa", description: "aaa"} }
    end
  end
  
  test "can edit an article" do
    get edit_article_path(@article)
    assert_response :success
    assert_response :success do
      patch article_path(@article), article: { title: "aaa", description: "aaa" }
    end
  end
  
  test "can destroy an article" do
    get article_path(@article)
    assert_response :success
    assert_difference 'Article.count', -1 do
      delete article_path(@article) 
    end
    assert_redirected_to articles_path
  end
  
end
