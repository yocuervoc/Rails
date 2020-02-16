class ImagesController < ApplicationController
    def create
        #render plain: params[:image].inspect
        @imag= Image.new image_params
        @imag.save

        redirect_to @imag
    end

    def show
        @imag = Image.find params[:id]
    end

    def new
        @imag = Image.new
    end

    def index
        @imag = Image.all
    end

    def edit
        @imag = Image.find params[:id]
    end

    def update
        @imag= Image.find params[:id]
        @imag.update image_params
        redirect_to @imag
    end

    private
    def image_params
        params.require(:image).permit(:description)
    end
end
