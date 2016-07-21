class GalleryPhotosController < ApplicationController
  before_action :set_gallery_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @gallery_photos = GalleryPhoto.all
    respond_with(@gallery_photos)
  end

  def show
    respond_with(@gallery_photo)
  end

  def new
    @gallery_photo = GalleryPhoto.new
    respond_with(@gallery_photos)
  end

  def edit
  end

  def create
    @gallery_photo = GalleryPhoto.new(gallery_photo_params)
    @gallery_photo.save
    redirect_to gallery_photos_path
  end

  def update
    @gallery_photo.update(gallery_photo_params)
    respond_with(@gallery_photo)
  end

  def destroy
    @gallery_photo.destroy
    respond_with(@gallery_photo)
  end

  private
    def set_gallery_photo
      @gallery_photo = GalleryPhoto.find(params[:id])
    end

    def gallery_photo_params
      params.require(:gallery_photo).permit(:name, :description, :image)
    end
end
