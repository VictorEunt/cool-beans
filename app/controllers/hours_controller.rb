class HoursController < ApplicationController
  before_action :set_hour, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @hours = Hour.all
    respond_with(@hours)
  end

  def show
    respond_with(@hour)
  end

  def new
    @hour = Hour.new
    respond_with(@hour)
  end

  def edit
  end

  def create
    @hour = Hour.new(hour_params)
    @hour.save
    respond_with(@hour)
  end

  def update
   if @hour.update(hour_params)
      redirect_to dashboard_path, notice: 'Your update was saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @hour.destroy
    redirect_to dashboard_path
  end

  private
    def set_hour
      @hour = Hour.find(params[:id])
    end

    def hour_params
      params.require(:hour).permit(:name, :message, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :note)
    end
end
