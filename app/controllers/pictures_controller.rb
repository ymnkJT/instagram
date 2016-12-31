class PicturesController < ApplicationController
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
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(pictures_params)
      redirect_to root_path, notice: "更新しました！"
    else
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_path, notice: "削除しました！"
  end

  private
    def pictures_params
      params.require(:picture).permit(:image, :content)
    end
end
