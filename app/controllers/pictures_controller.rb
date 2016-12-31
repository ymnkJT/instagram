class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(pictures_params)
    redirect_to root_path
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(pictures_params)
    redirect_to root_path
  end

  private
    def pictures_params
      params.require(:picture).permit(:image, :content)
    end
end
