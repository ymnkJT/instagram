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
  end

  def update
  end

  private
    def pictures_params
      params.require(:picture).permit(:image, :content)
    end
end
