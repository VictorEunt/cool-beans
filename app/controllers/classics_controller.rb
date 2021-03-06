class ClassicsController < ApplicationController
  before_action :set_classic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  respond_to :html

  def index
    @classics = Classic.all
    respond_with(@classics)
  end

  def show
    respond_with(@classic)
  end

  def new
    @classic = Classic.new
    respond_with(@classic)
  end

  def edit
  end

  def create
    @classic = Classic.new(classic_params)
    @classic.save
    respond_with(@classic)
  end
  
  def update
   if @classic.update(classic_params)
      redirect_to dashboard_path, notice: 'Your update was saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @classic.destroy
    redirect_to dashboard_path
  end

  private
    def set_classic
      @classic = Classic.find(params[:id])
    end

    def classic_params
      params.require(:classic).permit(:title, :description, :first_classic, :first_classic_description, :second_classic, :second_classic_description, :third_classic, :third_classic_description, :image_one, :image_two, :image_three, :first_modal, :first_modal_description, :second_modal, :second_modal_description, :modal_image_one, :modal_image_two, :third_modal, :third_modal_description, :modal_image_three)
    end
end
