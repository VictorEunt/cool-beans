class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @events = Event.all
    respond_with(@events)
  end

  def show
    respond_with(@event)
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save
    respond_with(@event)
  end

  def update
   if @event.update(event_params)
      redirect_to dashboard_path, notice: 'Your update was saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to dashboard_path
  end  

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description, :first_event, :first_event_description, :second_event, :second_event_description, :image_one, :image_two, :first_modal, :first_modal_description, :second_modal, :second_modal_description, :modal_image_one, :modal_image_two)
    end
end
