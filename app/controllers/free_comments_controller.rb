class FreeCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    new_comment = FreeComment.new(content: params[:input_comment],
                              freepost_id: params[:freepost_id],
                              user_id: current_user.id)
    new_comment.save

    redirect_to "/free/show/#{params[:freepost_id]}"
  end
  
  def destroy
    @comment.destroy
    redirect_to "/free/show/#{params[:freepost_id]}"
  end

  private
  def check_ownership!
    @comment = FreeComment.find_by(id: params[:id])
    redirect_to root_path if @comment.user.id != current_user.id
  end
end
