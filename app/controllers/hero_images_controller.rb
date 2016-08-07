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
    if @hero_image.save
      redirect_to dashboard_path, notice: 'Your menu was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
   if @hero_image.update(hero_image_params)
      redirect_to dashboard_path, notice: 'Your PDF menu was updated.'
    else
      render action: 'edit'
    end
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
