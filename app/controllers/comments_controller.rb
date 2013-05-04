class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end    
    
    def create
        @comment = Comment.new(params[:comment])
        @comment.save
        redirect_to new_comment_path
    end

    def show
        @comment = Comment.find(params[:id])
    end    

    def edit
        @comment = Comment.find(params[:id])
    end  

end

