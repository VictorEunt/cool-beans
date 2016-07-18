class SpecialsMenusController < ApplicationController
  before_action :set_specials_menu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @specials_menus = SpecialsMenu.all
    @menu_items = MenuItem.all.order('item_rank ASC')
    @menu_photos = MenuPhoto.all
    
    respond_to do |format|
      format.html  
    end
  end

  def show
    respond_with(@specials_menu)
  end

  def new
    @specials_menu = SpecialsMenu.new
    respond_with(@specials_menu)
  end

  def edit
  end

  def create
    @specials_menu = SpecialsMenu.new(specials_menu_params)
    @specials_menu.save
    respond_with(@specials_menu)
  end

  def update
    @specials_menu.update(specials_menu_params)
    respond_with(@specials_menu)
  end

  def destroy
    @specials_menu.destroy
    respond_with(@specials_menu)
  end

  private
    def set_specials_menu
      @specials_menu = SpecialsMenu.find(params[:id])
    end

    def specials_menu_params
      params.require(:specials_menu).permit(:name, :description)
    end
end
