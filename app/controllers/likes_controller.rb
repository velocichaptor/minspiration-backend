class LikesController < ApplicationController
    def index
        @likes = Like.all
        render json: @likes
    end    

    def show
        @like = Like.find(params[:id])
        render json: @like
    end    


    def new
        @like = Like.new

        render json: @like
    end

    def create
        @like = Like.create(like_params)

        render json: @like
    end

    def destroy
        @like = Like.find(params[:id])  
        @like.destroy
    end

    def update
        @like = Like.find(params[:id])
        @like.update(like_params)

        render json: @like
    end

    private

    def like_params
        params.require(:like).permit(:post_id)
    end
end
