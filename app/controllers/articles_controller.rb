class ArticlesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @articles = Article.paginate(page: params[:page])
  end

  def show
    @article = Article.find(params[:id])
    @user = User.find_by(id: @article.user_id)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end
  
  def create
    @article = current_user.articles.new(article_params)
    
    if @article.save
      redirect_to @article, notice: "体験記「#{@article.title}」を投稿しました。"
    else
      render :new, notice: {
      article: @article,
      error_messages: @article.errors.full_messages
    }
    end
  end
  
  def update
    @article = current_user.articles.find(params[:id])
    if @article.update(article_params)
      redirect_to article_url(@article), notice: "体験記「#{@article.title}」を更新しました。"
    else
      render :edit
    end
  end
  
  def destroy
    article = current_user.articles.find(params[:id])
    article.destroy
    redirect_to articles_url, notice: "体験記「#{article.title}」を削除しました。"
  end
  
  
  private
  
  def article_params
    params.require(:article).permit(:title, :description)
  end
  
end
