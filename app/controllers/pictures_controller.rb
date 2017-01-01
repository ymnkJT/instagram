class PicturesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_picture, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(pictures_params)
    if @picture.save
      redirect_to root_path, notice: "写真を共有しました！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @picture.update(pictures_params)
      redirect_to root_path, notice: "更新しました！"
    else
      render :new
    end
  end

  def destroy
    @picture.destroy
    redirect_to root_path, notice: "削除しました！"
  end

  private
    def pictures_params
      params.require(:picture).permit(:image, :content)
    end

    def find_picture
      @picture = Picture.find(params[:id])
    end
end
