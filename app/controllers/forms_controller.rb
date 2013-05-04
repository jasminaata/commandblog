class FormsController < ApplicationController
    def new
        @post = Post.new
    end    
    
    def create
        @post = Post.new(params[:post])
        @post.save
        redirect_to new_post_path
    end    

    def show
        @post = Post.find(params[:id])
    end    
end
