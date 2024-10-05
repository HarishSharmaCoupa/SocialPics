class PostsController < ApplicationController
    def show
        @post = Post.new
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
    end

    private

    def post_params 
        params.require(:user).permit(:image, :image_cache)
    end
end
