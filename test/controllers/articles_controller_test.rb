require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @article = articles(:one)
  end
  
  test "should get index" do
    get articles_path
    assert_response :found
  end

  test "should get show" do
    get article_path(@article)
    assert_response :found
  end

  test "should get new" do
    get new_article_path
    assert_response :found
  end

  test "should get edit" do
    get edit_article_path(@article)
    assert_response :found
  end

end
