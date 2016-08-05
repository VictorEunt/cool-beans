class GalleryPhotosController < ApplicationController
  before_action :set_gallery_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :edit, :create, :update, :destroy]

  def index
    @gallery_photos = GalleryPhoto.all
  end

  def show
  end

  def new
    @gallery_photo = GalleryPhoto.new
  end

  def edit
  end

  def create
    @gallery_photo = GalleryPhoto.new(gallery_photo_params)
    if @gallery_photo.save
      redirect_to gallery_photos_path, notice: 'Photo was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @gallery_photo.update(gallery_photo_params)
      redirect_to gallery_photos_path, notice: 'Photo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @gallery_photo.destroy
    redirect_to gallery_photos_path
  end

  private
    def set_gallery_photo
      @gallery_photo = GalleryPhoto.find(params[:id])
    end

    def gallery_photo_params
      params.require(:gallery_photo).permit(:name, :description, :image)
    end
end
