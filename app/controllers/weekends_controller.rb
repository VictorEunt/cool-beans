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
    @weekend.save
    respond_with(@weekend)
  end

  def update
    @weekend.update(weekend_params)
    respond_with(@weekend)
  end

  def destroy
    @weekend.destroy
    respond_with(@weekend)
  end

  private
    def set_weekend
      @weekend = Weekend.find(params[:id])
    end

    def weekend_params
      params.require(:weekend).permit(:title, :description, :first_special, :first_special_description, :second_special, :second_special_description)
    end
end
