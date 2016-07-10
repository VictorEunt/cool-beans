class MenuPhotosController < ApplicationController
  before_action :set_menu_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @menu_photos = MenuPhoto.all
    respond_with(@menu_photos)
  end

  def show
    respond_with(@menu_photo)
  end

  def new
    @menu_photo = MenuPhoto.new
    respond_with(@menu_photo)
  end

  def edit
  end

  def create
    @menu_photo = MenuPhoto.new(menu_photo_params)
    @menu_photo.save
    respond_with(@menu_photo)
  end

  def update
    @menu_photo.update(menu_photo_params)
    respond_with(@menu_photo)
  end

  def destroy
    @menu_photo.destroy
    respond_with(@menu_photo)
  end

  private
    def set_menu_photo
      @menu_photo = MenuPhoto.find(params[:id])
    end

    def menu_photo_params
      params.require(:menu_photo).permit(:name, :photo)
    end
end
