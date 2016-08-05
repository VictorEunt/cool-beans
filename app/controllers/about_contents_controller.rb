class AboutContentsController < ApplicationController
  before_action :set_about_content, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @about_contents = AboutContent.all
    respond_with(@about_contents)
  end

  def show
    respond_with(@about_content)
  end

  def new
    @about_content = AboutContent.new
    respond_with(@about_content)
  end

  def edit
  end

  def create
    @about_content = AboutContent.new(about_content_params)
    @about_content.save
    respond_with(@about_content)
  end

  def update
   if @about_content.update(about_content_params)
      redirect_to dashboard_path, notice: 'Your update was saved.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @about_content.destroy
    redirect_to dashboard_path
  end

  private
    def set_about_content
      @about_content = AboutContent.find(params[:id])
    end

    def about_content_params
      params.require(:about_content).permit(:name, :part_one, :part_two, :part_three, :part_four, :part_five, :part_six)
    end
end
