class WeekendsController < ApplicationController
  before_action :set_weekend, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @weekends = Weekend.all
    respond_with(@weekends)
  end

  def show
    respond_with(@weekend)
  end

  def new
    @weekend = Weekend.new
    respond_with(@weekend)
  end

  def edit
  end

  def create
    @weekend = Weekend.new(weekend_params)
    if @weekend.save
      redirect_to root_path, notice: 'Your Weekend was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @weekend.update(weekend_params)
      redirect_to dashboard_path, notice: 'Your updates were saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @weekend.destroy
    redirect_to dashboard_path
  end

  private
    def set_weekend
      @weekend = Weekend.find(params[:id])
    end

    def weekend_params
      params.require(:weekend).permit(:title, :description, :first_special, :first_special_description, :second_special, :second_special_description, :image_one, :image_two, :first_modal, :first_modal_description, :second_modal, :second_modal_description, :modal_image_one, :modal_image_two)
    end
end