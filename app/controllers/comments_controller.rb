class CommentsController < ApplicationController
  load_and_authorize_resource param_method: :comment_params
  load_and_authorize_resource :duel

  def index

  end


  def new

  end

  def create
    @comment = @duel.comments.new(comment_params)
    if @comment.save
      current_user.comments.push(@comment)
      redirect_to root_path
    else
      redirect_to root_path
    end

  end

  def edit

  end

  def destroy

  end


  private def comment_params
    params.require(:comment).permit(:body)
  end
end
