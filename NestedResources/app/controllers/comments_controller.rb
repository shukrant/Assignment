class CommentsController < ApplicationController
    
    def new
        @comment = Comment.new
    end

    def edit
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)

        redirect_to post_path(@post)
    end

    def update
        @comment = Comment.find(params[:id])
        @post = @comment.post_id

        @comment.update_attributes(params[:comment])
        redirect_to post_path(@post)
    end

    private
        def comment_params
            params.require(:comment).permit(:body)
        end
end