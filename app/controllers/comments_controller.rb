class CommentsController < ApplicationController
  
  before_action :authenticate_user!, :only => [:create]
  
  def create
    @article = Article.find(params[:article_id])
    @cuomo = @article.comments.new(comment_params)
    @cuomo.user = current_user
    @cuomo.save

    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:user, :body)
  end

end
