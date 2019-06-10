class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :correct_user, only: :destroy
  
  def index
    @articles = Article.paginate(page: params[:page]).order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
    @user = User.find_by(id: @article.user_id)
    @comment = Comment.new
    @comments = @article.comments
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
    @article.destroy
    redirect_to articles_url, notice: "体験記「#{@article.title}」を削除しました。"
  end
  
  
  private
  
  def article_params
    params.require(:article).permit(:title, :description, :image)
  end
  
  def correct_user
    @article = current_user.articles.find_by(id: params[:id])
    redirect_to root_url if @article.nil?
  end
end
