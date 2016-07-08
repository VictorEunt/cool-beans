class ClassicsController < ApplicationController
  before_action :set_classic, only: [:show, :edit, :update, :destroy]

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
    @classic.update(classic_params)
    respond_with(@classic)
  end

  def destroy
    @classic.destroy
    respond_with(@classic)
  end

  private
    def set_classic
      @classic = Classic.find(params[:id])
    end

    def classic_params
      params.require(:classic).permit(:title, :description, :first_classic, :first_classic_description, :second_classic, :second_classic_description, :third_classic, :third_classic_description)
    end
end
