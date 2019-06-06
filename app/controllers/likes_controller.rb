class LikesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @like = Like.create(user_id: current_user.id, article_id: params[:article_id])
    @like.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    like = Like.find_by(user_id: current_user.id, article_id: params[:article_id])
    like.destroy
  end
end
