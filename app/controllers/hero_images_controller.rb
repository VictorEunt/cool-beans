class HeroImagesController < ApplicationController
  before_action :set_hero_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @hero_images = HeroImage.all
    respond_with(@hero_images)
  end

  def show
    respond_with(@hero_image)
  end

  def new
    @hero_image = HeroImage.new
    respond_with(@hero_image)
  end

  def edit
  end

  def create
    @hero_image = HeroImage.new(hero_image_params)
    @hero_image.save
    respond_with(@hero_image)
  end

  def update
    @hero_image.update(hero_image_params)
    respond_with(@hero_image)
  end

  def destroy
    @hero_image.destroy
    respond_with(@hero_image)
  end

  private
    def set_hero_image
      @hero_image = HeroImage.find(params[:id])
    end

    def hero_image_params
      params.require(:hero_image).permit(:name, :image)
    end
end
