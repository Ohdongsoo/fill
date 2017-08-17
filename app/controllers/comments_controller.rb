class CommentsController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.content = params[:input_comment]
        @comment.post_id = params[:postid]
        @comment.writer = current_user.name
        @comment.save
        redirect_to "/show/#{params[:postid]}"
    end
    
    def destroy
        @comment = Comment.find(params[:comment_id])
        @comment.destroy
        redirect_to "/show/#{params[:postid]}"
    end
    
    
end
