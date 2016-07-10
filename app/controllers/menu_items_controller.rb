class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @menu_items = MenuItem.all.order('item_rank ASC')
    @menu_photos = MenuPhoto.all

    respond_to do |format|
      format.html  
    end
  end
  
  def show
    respond_with(@menu_item)
  end

  def new
    @menu_item = MenuItem.new
    respond_with(@menu_item)
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    @menu_item.save
    respond_with(@menu_item)
  end

  def update
    @menu_item.update(menu_item_params)
    respond_with(@menu_item)
  end

  def destroy
    @menu_item.destroy
    respond_with(@menu_item)
  end

  private
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:menu_section, :name, :description, :price, :extra_one, :extra_one_price, :extra_two, :extra_two_price, :extra_three, :extra_three_price, :item_rank)
    end
end
