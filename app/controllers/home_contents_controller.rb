class HomeContentsController < ApplicationController
  before_action :set_home_content, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hero_images = HeroImage.all
    @hours = Hour.all
    @weekends = Weekend.all
    @classics = Classic.all
    @events = Event.all

    respond_to do |format|
      format.html
    end
  end

  def show
    respond_with(@home_content)
  end

  def new
    @home_content = HomeContent.new
    respond_with(@home_content)
  end

  def edit
  end

  def create
    @home_content = HomeContent.new(home_content_params)
    @home_content.save
    respond_with(@home_content)
  end

  def update
    @home_content.update(home_content_params)
    respond_with(@home_content)
  end

  def destroy
    @home_content.destroy
    respond_with(@home_content)
  end

  private
    def set_home_content
      @home_content = HomeContent.find(params[:id])
    end

    def home_content_params
      params.require(:home_content).permit(:name)
    end
end
