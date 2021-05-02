class PicturesController < ApplicationController
    def index
        @pictures = Picture.all
        render json: @pictures
    end    

    def show
        @pictures = Picture.find(params[:id])
        render json: @pictures
    end    


    def new
        @pictures = Picture.new

        render json: @pictures
    end

    def create
        @pictures = Picture.create(picture_params)

        render json: @pictures
    end

    def destroy
        @pictures = Picture.find(params[:id])  
        @pictures.destroy
    end

    def update
        @pictures = Picture.find(params[:id])
        @pictures.update(picture_params)

        render json: @pictures
    end

    private

    def picture_params
        params.require(:pictures).permit(:image, :caption, :post_id)
    end
end
