class ImagesController < ApplicationController
    def create
        render plain: params[:image].inspect
        @imag= Image.new image_params
        @imag.save
    end

    def new
        
    end

    private
    def image_params
        params.require(:image).permit(:description)
    end
end
